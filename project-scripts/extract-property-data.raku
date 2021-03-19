#!/usr/bin/env raku
use v6;

use PropertyNames;

sub resolveType ($_) {
  return '' unless $_;

  when 'TEXT' | 'STRING' | 'CAL-ADDRESS' | 'URI' { 'Str'                    }
  when 'INTEGER'                                 { 'Int'                    }
  when 'ATTACH'                                  { 'icalattach'             }
  when 'DATE-TIME' | 'DATE-TIME-DATE'            { 'icaltimetype'           }
  when 'DATE-TIME-PERIOD'                        { 'icaldatetimeperiodtype' }
  when 'PERIOD'                                  { 'icalperiodtype'         }
  when 'RECUR'                                   { 'icalrecurrencetype'     }
  when 'DURATION'                                { 'icaldurationtype'       }
  when 'GEO'                                     { 'icalgeotype'            }
  when 'FLOAT'                                   { 'Float'                  }
  when 'DOUBLE'                                  { 'Double'                 }
  when 'QUERY'                                   { 'Str'                    }
  when 'REQUEST-STATUS'                          { 'icalreqstattype'        }
  when 'TRIGGER'                                 { 'icaltriggertype'        }
  when 'UTC-OFFSET'                              { 'Int'                    }
  when 'X'                                       { 'Str'                    }

  default                { "icalproperty_{ .lc.subst('_', '', :g)
                                              .subst('-', '', :g) }" }
}


sub MAIN (:$force) {
  qx{install -d lib/ICal/Property};

  my @data = "origin/design-data/properties.csv".IO
                                                .slurp
                                                .lines
                                                .skip(3)
                                                .map({
                                                  my @c = .split(",")
                                                          .map({
                                                            .subst('"', '', :g)
                                                          });
                                                  @c[2] = resolveType( @c[2] );
                                                  @c
                                                })
                                                .grep(
                                                  *[0].starts-with("#").not
                                                )
                                                .grep(
                                                  *[0] eq <NO ANY>.none
                                                )
                                                .sort({ .[1] // Inf });

  my @all-derived;
  for @data {
    my ($name, $lname, $type) =
      ( %properties{ .[1] }, (%properties{ .[1] } // '').lc, .[2] );

    next unless .[0] && .[1] && .[2];
    next unless %properties{ .[1] };

    my $rtype = do given $type {
      when    'Float'  { 'Num' }
      when    'Double' { 'Num' }
      default          { $_ }
    }

    my $coerce = $rtype eq <Str Int Num>.any ||
                 $rtype.ends-with('attach' | 'type');

    my $ptype = $rtype;
    $ptype ~= '()' if $coerce;

    my $ntype = do given $type {
      when 'Int'    { 'uint32' }
      when 'Long'   { 'uint64' }
      when 'Float'  { 'num32'  }
      when 'Double' { 'num64'  }
    }

    my $ndef = '';
    $ndef = "my { $ntype } \$nv = \$var;\n    " if $ntype;
    my $var-or-nv = $ndef ?? 'nv' !! 'var';

    # output new/get/set and raw defs
    @all-derived.push:
      qq:to/CLASSDEF/;

        ### lib/ICal/Property/{ $name }.pm6

        class ICal::Property::{ $name } is ICal::Property \{

          method new ({ $ptype } \$var) \{
            { $ndef }my \$property = icalproperty_new_{ $lname }(\${ $var-or-nv });

            \$property ?? self.bless( :\$property) !! Nil;
          \}

          method get \{
            icalproperty_get_{ $lname }(self.icalproperty);
          \}

          method set ({ $ptype } \$v) \{
            icalproperty_set_{ $lname }(self.icalproperty, \$v);
          }

        \}
        sub icalproperty_new_{ $lname } ({ $ntype || $type })
          returns icalproperty
          is export
          is native(icalendar)
        \{ * \}

        sub icalproperty_get_{ $lname } (icalproperty)
          returns { $ntype || $type }
          is export
          is native(icalendar)
        \{ * \}

        sub icalproperty_set_{ $lname } (icalproperty, { $ntype || $type})
          is export
          is native(icalendar)
        \{ * \}
        CLASSDEF

     my $fio = "lib/ICal/Property/{ $name }.pm6".IO;
     unless $fio.r || $force.not {
       say "Writing code to { $fio.absolute }...";
       $fio.spurt(qq:to/UNIT/) ;
          use v6;

          use ICal::Raw::Types;

          use ICal::Property;

          { @all-derived.tail }
          UNIT
     }
  }

  my $fio-a = "lib/ICal/DerivedProperty.pm6".IO;
  unless $fio-a.r || $force.not {
    say "Writing code to { $fio-a.absolute }...";
    $fio-a.spurt(qq:to/ALL/)
      use v6;

      use ICal::Raw::Types;

      use ICal::Property;

      { @all-derived.join("\n"); }
      ALL
  }
}

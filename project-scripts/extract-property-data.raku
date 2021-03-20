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

  default                    { "icalproperty_{ .lc.subst(/<[_-]>/, '', :g) }" }

}

my %aliases = (
  DTEnd   => 'DateTimeEnd',
  DTStamp => 'DateTimeStamp',
  DTStart => 'DateTimeStart',
);

my %tz-handling = (
  DTEnd   => True,
  DTStamp => True,
  DTStart => True
);

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
    next unless .[0] && .[1] && .[2];

    my ($name, $lname, $type) =
      ( %properties{ .[1] }, (%properties{ .[1] } // '').lc, .[2] );

    next unless $name;

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

    my $aliased = '';
    if %aliases{ $name } -> $alias {
      $aliased = "our subset ICal::Property::{
                  $alias } is export of ICal::Property::{ $name };";
    }

    my $var-copy = '';
    my ($tz-handling, $tz-add) = '' xx 2;
    if %tz-handling{ $name } {
      $tz-handling =
        '$var = icaltimetype.new($var, :$timezone) if $timezone;' ~ "\n    ";
      $tz-add = ', :$timezone';
      $var-copy = ' is copy';
    }

    my $new-method = qq:to/METHOD/;
        method new ($ptype \$var{ $var-copy }, *\@params{ $tz-add }) \{
          { $ndef }{
            $tz-handling }my \$property = icalproperty_new_{ $lname }(\${
            $var-or-nv });

          my \$o = \$property ?? self.bless( :\$property) !! Nil;
          \$o.add_parameters(\@params) if +\@params;
          \$o;
        \}
      METHOD

    # cw: How should multi-valued params be handled when var-args cannot
    #     be used and proper type-based vector constructors do not exist.
    #     ??
    #
    # if (.[4] // '').contains('is_multivalued') {
    #   $new-method = qq:to/METHOD/;
    #       method new (*@var) \{
    #         die "Invalid values in \@var!" unless \@var.all ~~ { $rtype };
    #         { $ndef }my \$property = icalproperty_new_{ $lname }(\@var.head);
    #
    #         \$property ?? self.bless( :\$property) !! Nil;
    #       \}
    #     METHOD
    # }

    # output new/get/set and raw defs
    my $compunit-fqn = "ICal::Property::{ $name }";
    my $compunit = qq:to/CLASSDEF/;
      ### lib/ICal/Property/{ $name }.pm6

      class { $compunit-fqn } is ICal::Property \{

{ $new-method }
        method get \{
          icalproperty_get_{ $lname }(self.icalproperty);
        \}

        method set ({ $ptype } \$v) \{
          icalproperty_set_{ $lname }(self.icalproperty, \$v);
        \}

      \}

      { $aliased }

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

     @all-derived.push: $compunit-fqn;
     my $fio = "lib/ICal/Property/{ $name }.pm6".IO;
     unless $fio.r && $force.not {
       say "Writing code to { $fio.absolute }...";
       $fio.spurt(qq:to/UNIT/) ;
          use v6;

          use ICal::Raw::Types;

          use ICal::Property;

          { $compunit }
          UNIT
     }

     # cw: -YYY- Consider a ::MultiValued class variant which exists solely for
     #     creating multiple sigle-valued Property objects that can
     #     safely be slipped into the Component constructor. This class will
     #     only contain a method .new which returns an array of said obj
     #     class. One for each value specified.

  }

  my $fio-a = "lib/ICal/DerivedProperty.pm6".IO;
  unless $fio-a.r && $force.not {
    say "Writing code to { $fio-a.absolute }...";
    $fio-a.spurt(qq:to/ALL/)
      use v6;

      { @all-derived.map({ "need { $_ };" }).join("\n") }
      ALL
  }
}

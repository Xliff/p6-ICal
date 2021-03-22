#!/usr/bin/env raku
use v6;

use ParameterNames;

sub MAIN (:$force) {
  qx{install -d lib/ICal/Parameter};

  my @data = "origin/design-data/parameters.csv".IO
                                                .slurp
                                                .lines
                                                .skip(3)
                                                .map({
                                                  .split(",")
                                                  .map({
                                                    .subst('"', '', :g)
                                                  });
                                                })
                                                .grep({
                                                  .[0].starts-with("#").not
                                                  &&
                                                  .[0] ne <ANY NO>.all
                                                })
                                                .sort({ +.[1] // Inf });

  my @all-derived;
  for @data {
    next unless .[1] && %parameters{ .[1] };

    my ($name, $lname, $type) =
      ( %parameters{ .[1] }, (%parameters{ .[1] } // '').lc, .[2] );
    $type = 'Str'    if $type eq 'const char*';
    $type = 'uint32' if $type eq 'int';

    my $ptype = $type;
    $ptype = 'Int' unless $ptype eq 'Str';
    $ptype ~= '()';

    my $ndef = '';
    $ndef = "my { $type } \$nv        = \$var;\n    " unless $type eq 'Str';
    my $var-or-nv = $ndef ?? 'nv' !! 'var';

    # output new/get/set and raw defs
    my $compunit-fqn = "ICal::Parameter::{ $name }";
    my $spaced-type = ($type eq 'Str' ?? '' !! ' ' x $type.chars + 1) ~ ' ';
    my $compunit = qq:to/CLASSDEF/;
      ### lib/ICal/Parameter/{ $name }.pm6

      class { $compunit-fqn } is ICal::Parameter \{

        method new ($ptype \$var) \{
          { $ndef }my{ $spaced-type }\$parameter = icalparameter_new_{
            $lname }(\${ $var-or-nv });

          \$parameter ?? self.bless( :\$parameter ) !! Nil;
        \}

        method get \{
          icalparameter_get_{ $lname }(self.icalparameter);
        \}

        method set ({ $ptype } \$v) \{
          icalparameter_set_{ $lname }(self.icalparameter, \$v);
        \}

      \}

      sub icalparameter_new_{ $lname } ({ $type })
        returns icalparameter
        is export
        is native(icalendar)
      \{ * \}

      sub icalparameter_get_{ $lname } (icalparameter)
        returns { $type }
        is export
        is native(icalendar)
      \{ * \}

      sub icalparameter_set_{ $lname } (icalparameter, { $type })
        is export
        is native(icalendar)
      \{ * \}
      CLASSDEF

    @all-derived.push: $compunit-fqn;
    my $fio = "lib/ICal/Parameter/{ $name }.pm6".IO;
    unless $fio.r && $force.not {
      say "Writing code to { $fio.absolute }...";
      $fio.spurt(qq:to/UNIT/) ;
         use v6;

         use ICal::Raw::Types;

         use ICal::Parameter;

         { $compunit }
         UNIT
    }
  }

  my $fio-a = "lib/ICal/DerivedParameter.pm6".IO;
  unless $fio-a.r && $force.not {
    say "Writing code to { $fio-a.absolute }...";
    $fio-a.spurt(qq:to/ALL/)
      use v6;

      { @all-derived.map({ "need { $_ };" }).join("\n") }
      ALL
  }
}

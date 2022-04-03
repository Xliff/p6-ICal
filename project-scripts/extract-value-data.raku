#!/usr/bin/env raku
use v6;

use ValueNames;

sub resolveType ($t) {
  my token type-notation {
    '(' \w ')'((<[a..z_\*]>+)+ % \s+)
  }

  return unless $t;
  my $match = $t ~~ &type-notation;
  do given ($match[0][0][1] // $match[0][0] // $match[0]).Str {
    when    'char*' { 'Str'        }
    when    '*'     { 'icalattach' }
    when    'int'   { 'Int'        }
    when    'float' { 'Num'        }
    default         { $_           }
  }
}

sub MAIN (:$force) {
  qx{install -d lib/ICal/Value};

  my %original-type;
  my @data = "origin/design-data/value-types.csv".IO
                                                 .slurp
                                                 .lines
                                                 .skip(1)
                                                 .map({
                                                   my @c = .split(",")
                                                           .map({
                                                             .subst('"', '', :g)
                                                           });
                                                   %original-type{ @c[1] // -1 } = @c[2];
                                                   @c[2] = resolveType( @c[2] );
                                                   @c
                                                 })
                                                 .grep({
                                                   .[0].starts-with("#").not
                                                   &&
                                                   .[0] eq <NO ANY>.none
                                                 })
                                                 .sort({ .[1] // Inf });

  my @all-derived;
  for @data {
    my ($name, $lname, $type) =
      ( %values{ .[1] }, (%values{ .[1] } // '').lc, .[2] );

    next unless $name;

    my $ptype = $type;
    $ptype = 'Int' if $type.starts-with('icalproperty');
    $ptype ~= '()' if $ptype eq <Str Int Num>.any;

    my $ot    = %original-type{ .[1] };
    my $ntype = $type;
    $ntype    = 'uint32' if $ot   eq '(a)int';
    $ntype    = 'num32'  if $type eq 'Num';

    my $ndef = '';
    $ndef = "my { $ntype } \$nv = \$var;\n    " if $ntype;
    my $var-or-nv = $ndef ?? 'nv' !! 'var';

    my $var-copy = '';
    my ($tz-handling, $tz-add) = '' xx 2;
    if $type eq 'icaltimetype' {
      $tz-handling =
        '$var = icaltimetype.new($var, :$timezone) if $timezone;' ~ "\n    ";
      $tz-add = ', :$timezone';
      $var-copy = ' is copy';
    }

    my $compunit-fqn = "ICal::Value::{ $name }";
    my $new-prefix = %original-type{ .[1] }.contains('struct')
                       ?? 'icalvaluehelper'
                       !! 'icalvalue';
    my $new-lib = $type eq 'icaltimetype' ?? 'icalhelper' !! 'ical';
    my $new-method = qq:to/METHOD/;
      method new ($ptype \$var{ $var-copy }{ $tz-add }) \{
        # To be removed or placed behind a sentinel...
        say "Creating a { $compunit-fqn }...";
        { $ndef }{
          $tz-handling }my \$value = { $new-prefix }_new_{ $lname }(\${
          $var-or-nv });

        \$value ?? self.bless( :\$value ) !! Nil;
      \}
    METHOD

    # output new/get/set and raw defs
    my $compunit = qq:to/CLASSDEF/;
      ### lib/ICal/Value/{ $name }.pm6

      class { $compunit-fqn } is ICal::Value \{

{ $new-method }
        method get \{
          icalvalue_get_{ $lname }(self.icalvalue);
        \}

        method set ({ $ptype } \$v) \{
          icalvalue_set_{ $lname }(self.icalvalue, \$v);
        \}

      \}

      sub { $new-prefix }_new_{ $lname } ({ $ntype || $type })
        returns icalvalue
        is export
        is native({ $new-lib })
      \{ * \}

      sub icalvalue_get_{ $lname } (icalvalue)
        returns { $ntype || $type }
        is export
        is native(ical)
      \{ * \}

      sub icalvalue_set_{ $lname } (icalvalue, $ntype)
        is export
        is native(ical)
      \{ * \}
      CLASSDEF

     @all-derived.push: $compunit-fqn;
     my $fio = "lib/ICal/Value/{ $name }.pm6".IO;
     unless $fio.r && $force.not {
       say "Writing code to { $fio.absolute }...";
       $fio.spurt(qq:to/UNIT/) ;
          use v6;

          use ICal::Raw::Types;

          use ICal::Value;

          { $compunit }
          UNIT
     }
   }

   my $fio-a = "lib/ICal/DerivedValue.pm6".IO;
   unless $fio-a.r && $force.not {
     say "Writing code to { $fio-a.absolute }...";
     $fio-a.spurt(qq:to/ALL/)
       use v6;

       { @all-derived.map({ "need { $_ };" }).join("\n") }
       ALL
   }
}

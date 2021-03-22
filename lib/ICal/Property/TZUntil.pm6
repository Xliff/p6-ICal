use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/TZUntil.pm6

class ICal::Property::TZUntil is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::TZUntil...";
    my $property = icalproperty_new_tzuntil($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_tzuntil(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_tzuntil(self.icalproperty, $v);
  }

}



sub icalproperty_new_tzuntil (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzuntil (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzuntil (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


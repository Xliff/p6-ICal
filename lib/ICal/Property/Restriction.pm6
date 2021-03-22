use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Restriction.pm6

class ICal::Property::Restriction is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Restriction...";
    my $property = icalproperty_new_restriction($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_restriction(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_restriction(self.icalproperty, $v);
  }

}



sub icalproperty_new_restriction (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_restriction (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_restriction (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


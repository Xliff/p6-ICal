use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Location.pm6

class ICal::Property::Location is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_location($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_location(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_location(self.icalproperty, $v);
  }

}



sub icalproperty_new_location (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_location (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_location (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


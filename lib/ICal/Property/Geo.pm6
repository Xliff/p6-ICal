use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Geo.pm6

class ICal::Property::Geo is ICal::Property {

  method new (icalgeotype() $var, *@params) {
    my $property = icalproperty_new_geo($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_geo(self.icalproperty);
  }

  method set (icalgeotype() $v) {
    icalproperty_set_geo(self.icalproperty, $v);
  }

}



sub icalproperty_new_geo (icalgeotype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_geo (icalproperty)
  returns icalgeotype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_geo (icalproperty, icalgeotype)
  is export
  is native(icalendar)
{ * }


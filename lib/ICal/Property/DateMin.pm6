use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/DateMin.pm6

class ICal::Property::DateMin is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    my $property = icalproperty_new_datemin($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_datemin(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_datemin(self.icalproperty, $v);
  }

}



sub icalproperty_new_datemin (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_datemin (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_datemin (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


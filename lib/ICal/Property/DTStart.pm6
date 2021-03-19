use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/DTStart.pm6

class ICal::Property::DTStart is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_dtstart($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_dtstart(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_dtstart(self.icalproperty, $v);
  }

}
sub icalproperty_new_dtstart (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_dtstart (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_dtstart (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


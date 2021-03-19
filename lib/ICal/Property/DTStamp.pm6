use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/DTStamp.pm6

class ICal::Property::DTStamp is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_dtstamp($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_dtstamp(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_dtstamp(self.icalproperty, $v);
  }

}
sub icalproperty_new_dtstamp (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_dtstamp (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_dtstamp (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


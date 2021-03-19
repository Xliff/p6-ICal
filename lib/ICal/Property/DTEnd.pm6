use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/DTEnd.pm6

class ICal::Property::DTEnd is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_dtend($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_dtend(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_dtend(self.icalproperty, $v);
  }

}
sub icalproperty_new_dtend (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_dtend (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_dtend (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


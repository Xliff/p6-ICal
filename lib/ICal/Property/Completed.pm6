use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/Completed.pm6

class ICal::Property::Completed is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_completed($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_completed(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_completed(self.icalproperty, $v);
  }

}
sub icalproperty_new_completed (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_completed (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_completed (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


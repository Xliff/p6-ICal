use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/Created.pm6

class ICal::Property::Created is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_created($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_created(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_created(self.icalproperty, $v);
  }

}
sub icalproperty_new_created (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_created (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_created (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


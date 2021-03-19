use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/DefaultTZID.pm6

class ICal::Property::DefaultTZID is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_defaulttzid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_defaulttzid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_defaulttzid(self.icalproperty, $v);
  }

}
sub icalproperty_new_defaulttzid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_defaulttzid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_defaulttzid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


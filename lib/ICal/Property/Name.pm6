use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/Name.pm6

class ICal::Property::Name is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_name($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_name(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_name(self.icalproperty, $v);
  }

}
sub icalproperty_new_name (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_name (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_name (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Contact.pm6

class ICal::Property::Contact is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_contact($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_contact(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_contact(self.icalproperty, $v);
  }

}



sub icalproperty_new_contact (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_contact (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_contact (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/DefaultCharset.pm6

class ICal::Property::DefaultCharset is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_defaultcharset($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_defaultcharset(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_defaultcharset(self.icalproperty, $v);
  }

}
sub icalproperty_new_defaultcharset (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_defaultcharset (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_defaultcharset (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


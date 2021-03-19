use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/XlicMIMECharset.pm6

class ICal::Property::XlicMIMECharset is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_xlicmimecharset($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicmimecharset(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimecharset(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicmimecharset (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimecharset (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimecharset (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


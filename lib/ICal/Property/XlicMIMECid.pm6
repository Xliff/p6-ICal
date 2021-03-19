use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/XlicMIMECid.pm6

class ICal::Property::XlicMIMECid is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_xlicmimecid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicmimecid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimecid(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicmimecid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimecid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimecid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


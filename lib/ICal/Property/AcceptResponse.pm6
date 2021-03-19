use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/AcceptResponse.pm6

class ICal::Property::AcceptResponse is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_acceptresponse($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_acceptresponse(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_acceptresponse(self.icalproperty, $v);
  }

}
sub icalproperty_new_acceptresponse (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_acceptresponse (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_acceptresponse (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


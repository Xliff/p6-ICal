use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Url.pm6

class ICal::Property::Url is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_url($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_url(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_url(self.icalproperty, $v);
  }

}



sub icalproperty_new_url (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_url (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_url (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


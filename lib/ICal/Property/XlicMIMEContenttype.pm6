use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/XlicMIMEContenttype.pm6

class ICal::Property::XlicMIMEContenttype is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_xlicmimecontenttype($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_xlicmimecontenttype(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimecontenttype(self.icalproperty, $v);
  }

}



sub icalproperty_new_xlicmimecontenttype (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimecontenttype (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimecontenttype (icalproperty, Str)
  is export
  is native(icalendar)
{ * }

use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/XlicMIMEOptinfo.pm6

class ICal::Property::XlicMIMEOptinfo is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_xlicmimeoptinfo($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_xlicmimeoptinfo(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimeoptinfo(self.icalproperty, $v);
  }

}



sub icalproperty_new_xlicmimeoptinfo (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimeoptinfo (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimeoptinfo (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Response.pm6

class ICal::Property::Response is ICal::Property {

  method new (Int() $var, *@params) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_response($nv);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_response(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_response(self.icalproperty, $v);
  }

}



sub icalproperty_new_response (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_response (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_response (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


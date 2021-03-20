use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/ProdID.pm6

class ICal::Property::ProdID is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_prodid($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_prodid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_prodid(self.icalproperty, $v);
  }

}



sub icalproperty_new_prodid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_prodid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_prodid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


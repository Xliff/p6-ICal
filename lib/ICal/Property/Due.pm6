use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Due.pm6

class ICal::Property::Due is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    my $property = icalproperty_new_due($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_due(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_due(self.icalproperty, $v);
  }

}



sub icalproperty_new_due (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_due (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_due (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


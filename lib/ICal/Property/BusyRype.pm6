use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/BusyRype.pm6

class ICal::Property::BusyRype is ICal::Property {

  method new (icalproperty_busytype() $var, *@params) {
    my $property = icalproperty_new_busyrype($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_busyrype(self.icalproperty);
  }

  method set (icalproperty_busytype() $v) {
    icalproperty_set_busyrype(self.icalproperty, $v);
  }

}



sub icalproperty_new_busyrype (icalproperty_busytype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_busyrype (icalproperty)
  returns icalproperty_busytype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_busyrype (icalproperty, icalproperty_busytype)
  is export
  is native(icalendar)
{ * }


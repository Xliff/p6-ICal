use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/RequestStatus.pm6

class ICal::Property::RequestStatus is ICal::Property {

  method new (icalreqstattype() $var, *@params) {
    my $property = icalproperty_new_requeststatus($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_requeststatus(self.icalproperty);
  }

  method set (icalreqstattype() $v) {
    icalproperty_set_requeststatus(self.icalproperty, $v);
  }

}



sub icalproperty_new_requeststatus (icalreqstattype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_requeststatus (icalproperty)
  returns icalreqstattype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_requeststatus (icalproperty, icalreqstattype)
  is export
  is native(icalendar)
{ * }


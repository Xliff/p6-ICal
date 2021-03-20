use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/FreeBusy.pm6

class ICal::Property::FreeBusy is ICal::Property {

  method new (icalperiodtype() $var, *@params) {
    my $property = icalproperty_new_freebusy($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_freebusy(self.icalproperty);
  }

  method set (icalperiodtype() $v) {
    icalproperty_set_freebusy(self.icalproperty, $v);
  }

}



sub icalproperty_new_freebusy (icalperiodtype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_freebusy (icalproperty)
  returns icalperiodtype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_freebusy (icalproperty, icalperiodtype)
  is export
  is native(icalendar)
{ * }


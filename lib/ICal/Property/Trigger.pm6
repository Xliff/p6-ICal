use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Trigger.pm6

class ICal::Property::Trigger is ICal::Property {

  method new (icaltriggertype() $var, *@params) {
    my $property = icalproperty_new_trigger($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_trigger(self.icalproperty);
  }

  method set (icaltriggertype() $v) {
    icalproperty_set_trigger(self.icalproperty, $v);
  }

}



sub icalproperty_new_trigger (icaltriggertype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_trigger (icalproperty)
  returns icaltriggertype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_trigger (icalproperty, icaltriggertype)
  is export
  is native(icalendar)
{ * }


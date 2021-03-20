use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Action.pm6

class ICal::Property::Action is ICal::Property {

  method new (icalproperty_action $var, *@params) {
    my $property = icalproperty_new_action($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_action(self.icalproperty);
  }

  method set (icalproperty_action $v) {
    icalproperty_set_action(self.icalproperty, $v);
  }

}



sub icalproperty_new_action (icalproperty_action)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_action (icalproperty)
  returns icalproperty_action
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_action (icalproperty, icalproperty_action)
  is export
  is native(icalendar)
{ * }


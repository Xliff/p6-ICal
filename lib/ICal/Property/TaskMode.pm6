use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/TaskMode.pm6

class ICal::Property::TaskMode is ICal::Property {

  method new (icalproperty_taskmode $var, *@params) {
    my $property = icalproperty_new_taskmode($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_taskmode(self.icalproperty);
  }

  method set (icalproperty_taskmode $v) {
    icalproperty_set_taskmode(self.icalproperty, $v);
  }

}



sub icalproperty_new_taskmode (icalproperty_taskmode)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_taskmode (icalproperty)
  returns icalproperty_taskmode
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_taskmode (icalproperty, icalproperty_taskmode)
  is export
  is native(icalendar)
{ * }


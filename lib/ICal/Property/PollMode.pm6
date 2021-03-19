use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/PollMode.pm6

class ICal::Property::PollMode is ICal::Property {

  method new (icalproperty_pollmode $var) {
    my $property = icalproperty_new_pollmode($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_pollmode(self.icalproperty);
  }

  method set (icalproperty_pollmode $v) {
    icalproperty_set_pollmode(self.icalproperty, $v);
  }

}
sub icalproperty_new_pollmode (icalproperty_pollmode)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_pollmode (icalproperty)
  returns icalproperty_pollmode
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_pollmode (icalproperty, icalproperty_pollmode)
  is export
  is native(icalendar)
{ * }


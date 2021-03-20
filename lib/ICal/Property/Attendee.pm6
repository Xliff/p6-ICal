use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Attendee.pm6

class ICal::Property::Attendee is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_attendee($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_attendee(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_attendee(self.icalproperty, $v);
  }

}



sub icalproperty_new_attendee (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_attendee (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_attendee (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


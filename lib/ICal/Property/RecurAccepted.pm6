use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/RecurAccepted.pm6

class ICal::Property::RecurAccepted is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_recuraccepted($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_recuraccepted(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_recuraccepted(self.icalproperty, $v);
  }

}



sub icalproperty_new_recuraccepted (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_recuraccepted (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_recuraccepted (icalproperty, Str)
  is export
  is native(icalendar)
{ * }

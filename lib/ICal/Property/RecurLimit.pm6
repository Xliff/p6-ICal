use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/RecurLimit.pm6

class ICal::Property::RecurLimit is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_recurlimit($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_recurlimit(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_recurlimit(self.icalproperty, $v);
  }

}



sub icalproperty_new_recurlimit (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_recurlimit (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_recurlimit (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


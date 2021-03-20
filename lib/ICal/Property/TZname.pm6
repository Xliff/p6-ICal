use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/TZname.pm6

class ICal::Property::TZname is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_tzname($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_tzname(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_tzname(self.icalproperty, $v);
  }

}



sub icalproperty_new_tzname (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzname (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzname (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


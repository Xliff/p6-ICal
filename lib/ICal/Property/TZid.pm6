use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/TZid.pm6

class ICal::Property::TZid is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_tzid($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_tzid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_tzid(self.icalproperty, $v);
  }

}



sub icalproperty_new_tzid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


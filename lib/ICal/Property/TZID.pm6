use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/TZID.pm6

class ICal::Property::TZID is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::TZID...";
    my $property = icalproperty_new_tzid($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
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
  is native(ical)
{ * }

sub icalproperty_get_tzid (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_tzid (icalproperty, Str)
  is export
  is native(ical)
{ * }


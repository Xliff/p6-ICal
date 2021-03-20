use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Version.pm6

class ICal::Property::Version is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_version($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_version(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_version(self.icalproperty, $v);
  }

}



sub icalproperty_new_version (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_version (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_version (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


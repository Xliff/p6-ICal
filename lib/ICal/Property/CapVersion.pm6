use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/CapVersion.pm6

class ICal::Property::CapVersion is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_capversion($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_capversion(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_capversion(self.icalproperty, $v);
  }

}



sub icalproperty_new_capversion (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_capversion (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_capversion (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


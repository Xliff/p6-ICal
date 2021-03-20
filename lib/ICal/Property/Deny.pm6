use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Deny.pm6

class ICal::Property::Deny is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_deny($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_deny(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_deny(self.icalproperty, $v);
  }

}



sub icalproperty_new_deny (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_deny (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_deny (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


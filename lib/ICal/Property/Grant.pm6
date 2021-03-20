use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Grant.pm6

class ICal::Property::Grant is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_grant($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_grant(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_grant(self.icalproperty, $v);
  }

}



sub icalproperty_new_grant (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_grant (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_grant (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


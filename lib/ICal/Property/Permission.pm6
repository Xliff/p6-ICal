use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Permission.pm6

class ICal::Property::Permission is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_permission($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_permission(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_permission(self.icalproperty, $v);
  }

}



sub icalproperty_new_permission (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_permission (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_permission (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


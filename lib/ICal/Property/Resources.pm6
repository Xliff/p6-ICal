use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Resources.pm6

class ICal::Property::Resources is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_resources($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_resources(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_resources(self.icalproperty, $v);
  }

}



sub icalproperty_new_resources (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_resources (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_resources (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


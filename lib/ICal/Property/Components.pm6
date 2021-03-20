use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Components.pm6

class ICal::Property::Components is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_components($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_components(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_components(self.icalproperty, $v);
  }

}



sub icalproperty_new_components (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_components (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_components (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


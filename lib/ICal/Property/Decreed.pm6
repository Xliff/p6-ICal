use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Decreed.pm6

class ICal::Property::Decreed is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_decreed($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_decreed(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_decreed(self.icalproperty, $v);
  }

}



sub icalproperty_new_decreed (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_decreed (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_decreed (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


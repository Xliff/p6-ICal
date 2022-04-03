use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/DefaultVCars.pm6

class ICal::Property::DefaultVCars is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::DefaultVCars...";
    my $property = icalproperty_new_defaultvcars($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_defaultvcars(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_defaultvcars(self.icalproperty, $v);
  }

}



sub icalproperty_new_defaultvcars (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_defaultvcars (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_defaultvcars (icalproperty, Str)
  is export
  is native(ical)
{ * }


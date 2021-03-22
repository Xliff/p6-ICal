use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Color.pm6

class ICal::Property::Color is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Color...";
    my $property = icalproperty_new_color($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_color(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_color(self.icalproperty, $v);
  }

}



sub icalproperty_new_color (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_color (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_color (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


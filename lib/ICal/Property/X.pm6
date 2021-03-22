use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/X.pm6

class ICal::Property::X is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::X...";
    my $property = icalproperty_new_x($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_x(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_x(self.icalproperty, $v);
  }

}



sub icalproperty_new_x (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_x (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_x (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


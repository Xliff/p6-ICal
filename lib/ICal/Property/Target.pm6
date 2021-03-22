use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Target.pm6

class ICal::Property::Target is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Target...";
    my $property = icalproperty_new_target($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_target(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_target(self.icalproperty, $v);
  }

}



sub icalproperty_new_target (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_target (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_target (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/PollProperties.pm6

class ICal::Property::PollProperties is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::PollProperties...";
    my $property = icalproperty_new_pollproperties($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_pollproperties(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_pollproperties(self.icalproperty, $v);
  }

}



sub icalproperty_new_pollproperties (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_pollproperties (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_pollproperties (icalproperty, Str)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Duration.pm6

class ICal::Property::Duration is ICal::Property {

  method new (icaldurationtype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Duration...";
    my $property = icalproperty_new_duration($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_duration(self.icalproperty);
  }

  method set (icaldurationtype() $v) {
    icalproperty_set_duration(self.icalproperty, $v);
  }

}



sub icalproperty_new_duration (icaldurationtype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_duration (icalproperty)
  returns icaldurationtype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_duration (icalproperty, icaldurationtype)
  is export
  is native(icalendar)
{ * }


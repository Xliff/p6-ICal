use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Acknowledged.pm6

class ICal::Property::Acknowledged is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Acknowledged...";
    my $property = icalproperty_new_acknowledged($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_acknowledged(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_acknowledged(self.icalproperty, $v);
  }

}



sub icalproperty_new_acknowledged (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_acknowledged (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_acknowledged (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


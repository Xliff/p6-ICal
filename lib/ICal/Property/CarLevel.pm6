use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/CarLevel.pm6

class ICal::Property::CarLevel is ICal::Property {

  method new (icalproperty_carlevel $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::CarLevel...";
    my $property = icalproperty_new_carlevel($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_carlevel(self.icalproperty);
  }

  method set (icalproperty_carlevel $v) {
    icalproperty_set_carlevel(self.icalproperty, $v);
  }

}



sub icalproperty_new_carlevel (icalproperty_carlevel)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_carlevel (icalproperty)
  returns icalproperty_carlevel
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_carlevel (icalproperty, icalproperty_carlevel)
  is export
  is native(icalendar)
{ * }


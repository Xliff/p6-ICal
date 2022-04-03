use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/BusyType.pm6

class ICal::Property::BusyType is ICal::Property {

  method new (icalproperty_busytype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::BusyType...";
    my $property = icalproperty_new_busytype($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_busytype(self.icalproperty);
  }

  method set (icalproperty_busytype() $v) {
    icalproperty_set_busytype(self.icalproperty, $v);
  }

}



sub icalproperty_new_busytype (icalproperty_busytype)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_busytype (icalproperty)
  returns icalproperty_busytype
  is export
  is native(ical)
{ * }

sub icalproperty_set_busytype (icalproperty, icalproperty_busytype)
  is export
  is native(ical)
{ * }


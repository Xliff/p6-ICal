use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Dat.pm6

class ICal::Property::Dat is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Dat...";
    my $property = icalproperty_new_dat($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_dat(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_dat(self.icalproperty, $v);
  }

}



sub icalproperty_new_dat (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_dat (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_dat (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


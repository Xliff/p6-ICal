use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/CarID.pm6

class ICal::Property::CarID is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::CarID...";
    my $property = icalproperty_new_carid($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_carid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_carid(self.icalproperty, $v);
  }

}



sub icalproperty_new_carid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_carid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_carid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


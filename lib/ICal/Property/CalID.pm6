use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/CalID.pm6

class ICal::Property::CalID is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::CalID...";
    my $property = icalproperty_new_calid($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_calid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_calid(self.icalproperty, $v);
  }

}



sub icalproperty_new_calid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_calid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_calid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


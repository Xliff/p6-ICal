use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/CalScale.pm6

class ICal::Property::CalScale is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::CalScale...";
    my $property = icalproperty_new_calscale($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_calscale(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_calscale(self.icalproperty, $v);
  }

}



sub icalproperty_new_calscale (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_calscale (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_calscale (icalproperty, Str)
  is export
  is native(ical)
{ * }


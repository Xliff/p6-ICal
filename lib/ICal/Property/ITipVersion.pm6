use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/ITipVersion.pm6

class ICal::Property::ITipVersion is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::ITipVersion...";
    my $property = icalproperty_new_itipversion($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_itipversion(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_itipversion(self.icalproperty, $v);
  }

}



sub icalproperty_new_itipversion (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_itipversion (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_itipversion (icalproperty, Str)
  is export
  is native(ical)
{ * }


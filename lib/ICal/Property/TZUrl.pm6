use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/TZUrl.pm6

class ICal::Property::TZUrl is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::TZUrl...";
    my $property = icalproperty_new_tzurl($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_tzurl(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_tzurl(self.icalproperty, $v);
  }

}



sub icalproperty_new_tzurl (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzurl (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzurl (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


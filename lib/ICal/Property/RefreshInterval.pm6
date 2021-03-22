use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/RefreshInterval.pm6

class ICal::Property::RefreshInterval is ICal::Property {

  method new (icaldurationtype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::RefreshInterval...";
    my $property = icalproperty_new_refreshinterval($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_refreshinterval(self.icalproperty);
  }

  method set (icaldurationtype() $v) {
    icalproperty_set_refreshinterval(self.icalproperty, $v);
  }

}



sub icalproperty_new_refreshinterval (icaldurationtype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_refreshinterval (icalproperty)
  returns icaldurationtype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_refreshinterval (icalproperty, icaldurationtype)
  is export
  is native(icalendar)
{ * }


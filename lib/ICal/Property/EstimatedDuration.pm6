use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/EstimatedDuration.pm6

class ICal::Property::EstimatedDuration is ICal::Property {

  method new (icaldurationtype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::EstimatedDuration...";
    my $property = icalproperty_new_estimatedduration($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_estimatedduration(self.icalproperty);
  }

  method set (icaldurationtype() $v) {
    icalproperty_set_estimatedduration(self.icalproperty, $v);
  }

}



sub icalproperty_new_estimatedduration (icaldurationtype)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_estimatedduration (icalproperty)
  returns icaldurationtype
  is export
  is native(ical)
{ * }

sub icalproperty_set_estimatedduration (icalproperty, icaldurationtype)
  is export
  is native(ical)
{ * }


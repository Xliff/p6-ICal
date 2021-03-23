use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/XLicClusterCount.pm6

class ICal::Property::XLicClusterCount is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::XLicClusterCount...";
    my $property = icalproperty_new_xlicclustercount($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_xlicclustercount(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicclustercount(self.icalproperty, $v);
  }

}



sub icalproperty_new_xlicclustercount (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_xlicclustercount (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_xlicclustercount (icalproperty, Str)
  is export
  is native(ical)
{ * }


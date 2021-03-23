use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/XLicClass.pm6

class ICal::Property::XLicClass is ICal::Property {

  method new (icalproperty_xlicclass $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::XLicClass...";
    my $property = icalproperty_new_xlicclass($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_xlicclass(self.icalproperty);
  }

  method set (icalproperty_xlicclass $v) {
    icalproperty_set_xlicclass(self.icalproperty, $v);
  }

}



sub icalproperty_new_xlicclass (icalproperty_xlicclass)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_xlicclass (icalproperty)
  returns icalproperty_xlicclass
  is export
  is native(ical)
{ * }

sub icalproperty_set_xlicclass (icalproperty, icalproperty_xlicclass)
  is export
  is native(ical)
{ * }


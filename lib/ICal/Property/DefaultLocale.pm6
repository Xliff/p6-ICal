use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/DefaultLocale.pm6

class ICal::Property::DefaultLocale is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::DefaultLocale...";
    my $property = icalproperty_new_defaultlocale($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_defaultlocale(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_defaultlocale(self.icalproperty, $v);
  }

}



sub icalproperty_new_defaultlocale (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_defaultlocale (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_defaultlocale (icalproperty, Str)
  is export
  is native(ical)
{ * }


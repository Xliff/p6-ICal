use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Method.pm6

class ICal::Property::Method is ICal::Property {

  method new (icalproperty_method $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Method...";
    my $property = icalproperty_new_method($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_method(self.icalproperty);
  }

  method set (icalproperty_method $v) {
    icalproperty_set_method(self.icalproperty, $v);
  }

}



sub icalproperty_new_method (icalproperty_method)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_method (icalproperty)
  returns icalproperty_method
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_method (icalproperty, icalproperty_method)
  is export
  is native(icalendar)
{ * }


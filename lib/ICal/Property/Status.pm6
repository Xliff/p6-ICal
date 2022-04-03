use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Status.pm6

class ICal::Property::Status is ICal::Property {

  method new (icalproperty_status $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Status...";
    my $property = icalproperty_new_status($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_status(self.icalproperty);
  }

  method set (icalproperty_status $v) {
    icalproperty_set_status(self.icalproperty, $v);
  }

}



sub icalproperty_new_status (icalproperty_status)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_status (icalproperty)
  returns icalproperty_status
  is export
  is native(ical)
{ * }

sub icalproperty_set_status (icalproperty, icalproperty_status)
  is export
  is native(ical)
{ * }


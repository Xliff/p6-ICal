use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/QueryLevel.pm6

class ICal::Property::QueryLevel is ICal::Property {

  method new (icalproperty_querylevel $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::QueryLevel...";
    my $property = icalproperty_new_querylevel($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_querylevel(self.icalproperty);
  }

  method set (icalproperty_querylevel $v) {
    icalproperty_set_querylevel(self.icalproperty, $v);
  }

}



sub icalproperty_new_querylevel (icalproperty_querylevel)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_querylevel (icalproperty)
  returns icalproperty_querylevel
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_querylevel (icalproperty, icalproperty_querylevel)
  is export
  is native(icalendar)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Conference.pm6

class ICal::Property::Conference is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Conference...";
    my $property = icalproperty_new_conference($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_conference(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_conference(self.icalproperty, $v);
  }

}



sub icalproperty_new_conference (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_conference (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_conference (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


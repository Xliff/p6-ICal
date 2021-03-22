use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/QueryID.pm6

class ICal::Property::QueryID is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::QueryID...";
    my $property = icalproperty_new_queryid($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_queryid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_queryid(self.icalproperty, $v);
  }

}



sub icalproperty_new_queryid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_queryid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_queryid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


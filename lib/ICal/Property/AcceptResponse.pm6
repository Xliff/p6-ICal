use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/AcceptResponse.pm6

class ICal::Property::AcceptResponse is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::AcceptResponse...";
    my $property = icalproperty_new_acceptresponse($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_acceptresponse(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_acceptresponse(self.icalproperty, $v);
  }

}



sub icalproperty_new_acceptresponse (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_acceptresponse (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_acceptresponse (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


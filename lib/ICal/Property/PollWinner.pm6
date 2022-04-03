use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/PollWinner.pm6

class ICal::Property::PollWinner is ICal::Property {

  method new (Int() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::PollWinner...";
    my uint32 $nv = $var;
    my $property = icalproperty_new_pollwinner($nv);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_pollwinner(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_pollwinner(self.icalproperty, $v);
  }

}



sub icalproperty_new_pollwinner (uint32)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_pollwinner (icalproperty)
  returns uint32
  is export
  is native(ical)
{ * }

sub icalproperty_set_pollwinner (icalproperty, uint32)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Voter.pm6

class ICal::Property::Voter is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_voter($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_voter(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_voter(self.icalproperty, $v);
  }

}



sub icalproperty_new_voter (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_voter (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_voter (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


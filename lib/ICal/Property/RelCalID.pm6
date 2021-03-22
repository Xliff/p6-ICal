use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/RelCalID.pm6

class ICal::Property::RelCalID is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::RelCalID...";
    my $property = icalproperty_new_relcalid($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_relcalid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_relcalid(self.icalproperty, $v);
  }

}



sub icalproperty_new_relcalid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_relcalid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_relcalid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


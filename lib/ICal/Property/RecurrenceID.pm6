use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/RecurrenceID.pm6

class ICal::Property::RecurrenceID is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    my $property = icalproperty_new_recurrenceid($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_recurrenceid(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_recurrenceid(self.icalproperty, $v);
  }

}



sub icalproperty_new_recurrenceid (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_recurrenceid (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_recurrenceid (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


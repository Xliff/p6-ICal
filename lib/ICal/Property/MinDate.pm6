use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/MinDate.pm6

class ICal::Property::MinDate is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    my $property = icalproperty_new_mindate($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_mindate(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_mindate(self.icalproperty, $v);
  }

}



sub icalproperty_new_mindate (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_mindate (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_mindate (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


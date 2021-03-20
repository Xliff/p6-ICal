use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/ExDate.pm6

class ICal::Property::ExDate is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    my $property = icalproperty_new_exdate($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_exdate(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_exdate(self.icalproperty, $v);
  }

}



sub icalproperty_new_exdate (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_exdate (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_exdate (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }

use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/RDate.pm6

class ICal::Property::RDate is ICal::Property {

  method new (icaldatetimeperiodtype() $var) {
    my $property = icalproperty_new_rdate($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_rdate(self.icalproperty);
  }

  method set (icaldatetimeperiodtype() $v) {
    icalproperty_set_rdate(self.icalproperty, $v);
  }

}
sub icalproperty_new_rdate (icaldatetimeperiodtype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_rdate (icalproperty)
  returns icaldatetimeperiodtype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_rdate (icalproperty, icaldatetimeperiodtype)
  is export
  is native(icalendar)
{ * }


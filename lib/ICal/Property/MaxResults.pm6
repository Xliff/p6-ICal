use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/MaxResults.pm6

class ICal::Property::MaxResults is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_maxresults($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_maxresults(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_maxresults(self.icalproperty, $v);
  }

}
sub icalproperty_new_maxresults (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_maxresults (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_maxresults (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


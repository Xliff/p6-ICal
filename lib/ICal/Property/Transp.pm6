use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/Transp.pm6

class ICal::Property::Transp is ICal::Property {

  method new (icalproperty_transp $var) {
    my $property = icalproperty_new_transp($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_transp(self.icalproperty);
  }

  method set (icalproperty_transp $v) {
    icalproperty_set_transp(self.icalproperty, $v);
  }

}
sub icalproperty_new_transp (icalproperty_transp)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_transp (icalproperty)
  returns icalproperty_transp
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_transp (icalproperty, icalproperty_transp)
  is export
  is native(icalendar)
{ * }


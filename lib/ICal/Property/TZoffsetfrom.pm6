use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/TZoffsetfrom.pm6

class ICal::Property::TZoffsetfrom is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_tzoffsetfrom($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_tzoffsetfrom(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_tzoffsetfrom(self.icalproperty, $v);
  }

}
sub icalproperty_new_tzoffsetfrom (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzoffsetfrom (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzoffsetfrom (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


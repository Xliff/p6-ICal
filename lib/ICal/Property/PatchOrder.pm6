use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/PatchOrder.pm6

class ICal::Property::PatchOrder is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_patchorder($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_patchorder(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_patchorder(self.icalproperty, $v);
  }

}
sub icalproperty_new_patchorder (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_patchorder (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_patchorder (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


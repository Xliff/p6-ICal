use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/Sequence.pm6

class ICal::Property::Sequence is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_sequence($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_sequence(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_sequence(self.icalproperty, $v);
  }

}
sub icalproperty_new_sequence (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_sequence (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_sequence (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


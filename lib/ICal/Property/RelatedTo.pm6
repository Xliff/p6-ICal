use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/RelatedTo.pm6

class ICal::Property::RelatedTo is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_relatedto($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_relatedto(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_relatedto(self.icalproperty, $v);
  }

}
sub icalproperty_new_relatedto (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_relatedto (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_relatedto (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


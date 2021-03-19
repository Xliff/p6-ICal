use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/TZurl.pm6

class ICal::Property::TZurl is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_tzurl($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_tzurl(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_tzurl(self.icalproperty, $v);
  }

}
sub icalproperty_new_tzurl (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzurl (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzurl (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


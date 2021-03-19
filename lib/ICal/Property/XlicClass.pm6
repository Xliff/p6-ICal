use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/XlicClass.pm6

class ICal::Property::XlicClass is ICal::Property {

  method new (icalproperty_xlicclass $var) {
    my $property = icalproperty_new_xlicclass($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicclass(self.icalproperty);
  }

  method set (icalproperty_xlicclass $v) {
    icalproperty_set_xlicclass(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicclass (icalproperty_xlicclass)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicclass (icalproperty)
  returns icalproperty_xlicclass
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicclass (icalproperty, icalproperty_xlicclass)
  is export
  is native(icalendar)
{ * }


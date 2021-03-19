use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/Source.pm6

class ICal::Property::Source is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_source($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_source(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_source(self.icalproperty, $v);
  }

}
sub icalproperty_new_source (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_source (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_source (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


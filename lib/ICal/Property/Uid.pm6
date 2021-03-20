use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Uid.pm6

class ICal::Property::Uid is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_uid($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_uid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_uid(self.icalproperty, $v);
  }

}



sub icalproperty_new_uid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_uid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_uid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


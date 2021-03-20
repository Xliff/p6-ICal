use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/QueryName.pm6

class ICal::Property::QueryName is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_queryname($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_queryname(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_queryname(self.icalproperty, $v);
  }

}



sub icalproperty_new_queryname (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_queryname (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_queryname (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Query.pm6

class ICal::Property::Query is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_query($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_query(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_query(self.icalproperty, $v);
  }

}



sub icalproperty_new_query (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_query (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_query (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Summary.pm6

class ICal::Property::Summary is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_summary($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_summary(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_summary(self.icalproperty, $v);
  }

}



sub icalproperty_new_summary (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_summary (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_summary (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


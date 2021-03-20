use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/AllowConflict.pm6

class ICal::Property::AllowConflict is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_allowconflict($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_allowconflict(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_allowconflict(self.icalproperty, $v);
  }

}



sub icalproperty_new_allowconflict (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_allowconflict (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_allowconflict (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


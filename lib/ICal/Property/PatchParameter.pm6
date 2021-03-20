use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/PatchParameter.pm6

class ICal::Property::PatchParameter is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_patchparameter($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_patchparameter(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_patchparameter(self.icalproperty, $v);
  }

}



sub icalproperty_new_patchparameter (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_patchparameter (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_patchparameter (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


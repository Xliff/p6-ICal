use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/PatchDelete.pm6

class ICal::Property::PatchDelete is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_patchdelete($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_patchdelete(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_patchdelete(self.icalproperty, $v);
  }

}



sub icalproperty_new_patchdelete (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_patchdelete (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_patchdelete (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


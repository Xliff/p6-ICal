use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/CalMaster.pm6

class ICal::Property::CalMaster is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::CalMaster...";
    my $property = icalproperty_new_calmaster($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_calmaster(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_calmaster(self.icalproperty, $v);
  }

}



sub icalproperty_new_calmaster (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_calmaster (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_calmaster (icalproperty, Str)
  is export
  is native(ical)
{ * }


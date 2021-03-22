use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/PatchVersion.pm6

class ICal::Property::PatchVersion is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::PatchVersion...";
    my $property = icalproperty_new_patchversion($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_patchversion(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_patchversion(self.icalproperty, $v);
  }

}



sub icalproperty_new_patchversion (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_patchversion (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_patchversion (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


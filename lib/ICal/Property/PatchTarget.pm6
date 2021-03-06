use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/PatchTarget.pm6

class ICal::Property::PatchTarget is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::PatchTarget...";
    my $property = icalproperty_new_patchtarget($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_patchtarget(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_patchtarget(self.icalproperty, $v);
  }

}



sub icalproperty_new_patchtarget (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_patchtarget (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_patchtarget (icalproperty, Str)
  is export
  is native(ical)
{ * }


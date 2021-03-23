use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Repeat.pm6

class ICal::Property::Repeat is ICal::Property {

  method new (Int() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Repeat...";
    my uint32 $nv = $var;
    my $property = icalproperty_new_repeat($nv);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_repeat(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_repeat(self.icalproperty, $v);
  }

}



sub icalproperty_new_repeat (uint32)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_repeat (icalproperty)
  returns uint32
  is export
  is native(ical)
{ * }

sub icalproperty_set_repeat (icalproperty, uint32)
  is export
  is native(ical)
{ * }


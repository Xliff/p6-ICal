use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Priority.pm6

class ICal::Property::Priority is ICal::Property {

  method new (Int() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Priority...";
    my uint32 $nv = $var;
    my $property = icalproperty_new_priority($nv);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_priority(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_priority(self.icalproperty, $v);
  }

}



sub icalproperty_new_priority (uint32)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_priority (icalproperty)
  returns uint32
  is export
  is native(ical)
{ * }

sub icalproperty_set_priority (icalproperty, uint32)
  is export
  is native(ical)
{ * }


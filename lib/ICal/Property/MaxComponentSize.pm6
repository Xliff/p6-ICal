use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/MaxComponentSize.pm6

class ICal::Property::MaxComponentSize is ICal::Property {

  method new (Int() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::MaxComponentSize...";
    my uint32 $nv = $var;
    my $property = icalproperty_new_maxcomponentsize($nv);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_maxcomponentsize(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_maxcomponentsize(self.icalproperty, $v);
  }

}



sub icalproperty_new_maxcomponentsize (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_maxcomponentsize (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_maxcomponentsize (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


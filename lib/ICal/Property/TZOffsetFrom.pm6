use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/TZOffsetFrom.pm6

class ICal::Property::TZOffsetFrom is ICal::Property {

  method new (Int() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::TZOffsetFrom...";
    my uint32 $nv = $var;
    my $property = icalproperty_new_tzoffsetfrom($nv);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_tzoffsetfrom(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_tzoffsetfrom(self.icalproperty, $v);
  }

}



sub icalproperty_new_tzoffsetfrom (uint32)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_tzoffsetfrom (icalproperty)
  returns uint32
  is export
  is native(ical)
{ * }

sub icalproperty_set_tzoffsetfrom (icalproperty, uint32)
  is export
  is native(ical)
{ * }


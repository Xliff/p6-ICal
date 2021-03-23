use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/TZOffsetTo.pm6

class ICal::Property::TZOffsetTo is ICal::Property {

  method new (Int() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::TZOffsetTo...";
    my uint32 $nv = $var;
    my $property = icalproperty_new_tzoffsetto($nv);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_tzoffsetto(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_tzoffsetto(self.icalproperty, $v);
  }

}



sub icalproperty_new_tzoffsetto (uint32)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_tzoffsetto (icalproperty)
  returns uint32
  is export
  is native(ical)
{ * }

sub icalproperty_set_tzoffsetto (icalproperty, uint32)
  is export
  is native(ical)
{ * }


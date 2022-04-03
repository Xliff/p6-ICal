use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/StoresExpanded.pm6

class ICal::Property::StoresExpanded is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::StoresExpanded...";
    my $property = icalproperty_new_storesexpanded($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_storesexpanded(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_storesexpanded(self.icalproperty, $v);
  }

}



sub icalproperty_new_storesexpanded (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_storesexpanded (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_storesexpanded (icalproperty, Str)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Expand.pm6

class ICal::Property::Expand is ICal::Property {

  method new (Int() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Expand...";
    my uint32 $nv = $var;
    my $property = icalproperty_new_expand($nv);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_expand(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_expand(self.icalproperty, $v);
  }

}



sub icalproperty_new_expand (uint32)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_expand (icalproperty)
  returns uint32
  is export
  is native(ical)
{ * }

sub icalproperty_set_expand (icalproperty, uint32)
  is export
  is native(ical)
{ * }


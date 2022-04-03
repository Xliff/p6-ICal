use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Owner.pm6

class ICal::Property::Owner is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Owner...";
    my $property = icalproperty_new_owner($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_owner(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_owner(self.icalproperty, $v);
  }

}



sub icalproperty_new_owner (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_owner (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_owner (icalproperty, Str)
  is export
  is native(ical)
{ * }


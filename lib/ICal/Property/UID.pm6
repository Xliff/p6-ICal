use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/UID.pm6

class ICal::Property::UID is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::UID...";
    my $property = icalproperty_new_uid($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_uid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_uid(self.icalproperty, $v);
  }

}



sub icalproperty_new_uid (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_uid (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_uid (icalproperty, Str)
  is export
  is native(ical)
{ * }


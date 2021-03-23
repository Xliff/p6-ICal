use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Description.pm6

class ICal::Property::Description is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Description...";
    my $property = icalproperty_new_description($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_description(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_description(self.icalproperty, $v);
  }

}



sub icalproperty_new_description (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_description (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_description (icalproperty, Str)
  is export
  is native(ical)
{ * }


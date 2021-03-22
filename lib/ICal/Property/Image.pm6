use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Image.pm6

class ICal::Property::Image is ICal::Property {

  method new (icalattach() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Image...";
    my $property = icalproperty_new_image($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_image(self.icalproperty);
  }

  method set (icalattach() $v) {
    icalproperty_set_image(self.icalproperty, $v);
  }

}



sub icalproperty_new_image (icalattach)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_image (icalproperty)
  returns icalattach
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_image (icalproperty, icalattach)
  is export
  is native(icalendar)
{ * }


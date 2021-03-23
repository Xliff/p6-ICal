use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Attach.pm6

class ICal::Property::Attach is ICal::Property {

  method new (icalattach() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Attach...";
    my $property = icalproperty_new_attach($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_attach(self.icalproperty);
  }

  method set (icalattach() $v) {
    icalproperty_set_attach(self.icalproperty, $v);
  }

}



sub icalproperty_new_attach (icalattach)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_attach (icalproperty)
  returns icalattach
  is export
  is native(ical)
{ * }

sub icalproperty_set_attach (icalproperty, icalattach)
  is export
  is native(ical)
{ * }


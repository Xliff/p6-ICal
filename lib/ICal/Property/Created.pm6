use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Created.pm6

class ICal::Property::Created is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Created...";
    my $property = icalpropertyhelper_new_created($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_created(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_created(self.icalproperty, $v);
  }

}



sub icalpropertyhelper_new_created (icaltimetype)
  returns icalproperty
  is export
  is native(icalhelper)
{ * }

sub icalproperty_get_created (icalproperty)
  returns icaltimetype
  is export
  is native(ical)
{ * }

sub icalproperty_set_created (icalproperty, icaltimetype)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Organizer.pm6

class ICal::Property::Organizer is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_organizer($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_organizer(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_organizer(self.icalproperty, $v);
  }

}



sub icalproperty_new_organizer (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_organizer (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_organizer (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


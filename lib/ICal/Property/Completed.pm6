use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Completed.pm6

class ICal::Property::Completed is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Completed...";
    my $property = icalpropertyhelper_new_completed($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_completed(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_completed(self.icalproperty, $v);
  }

}



sub icalpropertyhelper_new_completed (icaltimetype)
  returns icalproperty
  is export
  is native(icalhelper)
{ * }

sub icalproperty_get_completed (icalproperty)
  returns icaltimetype
  is export
  is native(ical)
{ * }

sub icalproperty_set_completed (icalproperty, icaltimetype)
  is export
  is native(ical)
{ * }


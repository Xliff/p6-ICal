use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/MinDate.pm6

class ICal::Property::MinDate is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::MinDate...";
    my $property = icalpropertyhelper_new_mindate($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_mindate(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_mindate(self.icalproperty, $v);
  }

}



sub icalpropertyhelper_new_mindate (icaltimetype)
  returns icalproperty
  is export
  is native(icalhelper)
{ * }

sub icalproperty_get_mindate (icalproperty)
  returns icaltimetype
  is export
  is native(ical)
{ * }

sub icalproperty_set_mindate (icalproperty, icaltimetype)
  is export
  is native(ical)
{ * }


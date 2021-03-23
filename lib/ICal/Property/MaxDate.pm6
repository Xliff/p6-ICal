use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/MaxDate.pm6

class ICal::Property::MaxDate is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::MaxDate...";
    my $property = icalpropertyhelper_new_maxdate($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_maxdate(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_maxdate(self.icalproperty, $v);
  }

}



sub icalpropertyhelper_new_maxdate (icaltimetype)
  returns icalproperty
  is export
  is native(icalhelper)
{ * }

sub icalproperty_get_maxdate (icalproperty)
  returns icaltimetype
  is export
  is native(ical)
{ * }

sub icalproperty_set_maxdate (icalproperty, icaltimetype)
  is export
  is native(ical)
{ * }


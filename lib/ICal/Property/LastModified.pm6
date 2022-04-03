use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/LastModified.pm6

class ICal::Property::LastModified is ICal::Property {

  method new (icaltimetype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::LastModified...";
    my $property = icalpropertyhelper_new_lastmodified($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_lastmodified(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_lastmodified(self.icalproperty, $v);
  }

}



sub icalpropertyhelper_new_lastmodified (icaltimetype)
  returns icalproperty
  is export
  is native(icalhelper)
{ * }

sub icalproperty_get_lastmodified (icalproperty)
  returns icaltimetype
  is export
  is native(ical)
{ * }

sub icalproperty_set_lastmodified (icalproperty, icaltimetype)
  is export
  is native(ical)
{ * }


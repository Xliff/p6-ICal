use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/DTStamp.pm6

class ICal::Property::DTStamp is ICal::Property {

  method new (icaltimetype() $var is copy, *@params, :$timezone) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::DTStamp...";
    $var = icaltimetype.new($var, :$timezone) if $timezone;
    my $property = icalpropertyhelper_new_dtstamp($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_dtstamp(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_dtstamp(self.icalproperty, $v);
  }

}

our subset ICal::Property::DateTimeStamp is export of ICal::Property::DTStamp;

sub icalpropertyhelper_new_dtstamp (icaltimetype)
  returns icalproperty
  is export
  is native(icalhelper)
{ * }

sub icalproperty_get_dtstamp (icalproperty)
  returns icaltimetype
  is export
  is native(ical)
{ * }

sub icalproperty_set_dtstamp (icalproperty, icaltimetype)
  is export
  is native(ical)
{ * }


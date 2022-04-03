use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/DTEnd.pm6

class ICal::Property::DTEnd is ICal::Property {

  method new (icaltimetype() $var is copy, *@params, :$timezone) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::DTEnd...";
    $var = icaltimetype.new($var, :$timezone) if $timezone;
    my $property = icalpropertyhelper_new_dtend($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_dtend(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_dtend(self.icalproperty, $v);
  }

}

our subset ICal::Property::DateTimeEnd is export of ICal::Property::DTEnd;

sub icalpropertyhelper_new_dtend (icaltimetype)
  returns icalproperty
  is export
  is native(icalhelper)
{ * }

sub icalproperty_get_dtend (icalproperty)
  returns icaltimetype
  is export
  is native(ical)
{ * }

sub icalproperty_set_dtend (icalproperty, icaltimetype)
  is export
  is native(ical)
{ * }


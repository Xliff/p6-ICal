use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/RRule.pm6

class ICal::Property::RRule is ICal::Property {

  method new (icalrecurrencetype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::RRule...";
    my $property = icalproperty_new_rrule($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_rrule(self.icalproperty);
  }

  method set (icalrecurrencetype() $v) {
    icalproperty_set_rrule(self.icalproperty, $v);
  }

}



sub icalproperty_new_rrule (icalrecurrencetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_rrule (icalproperty)
  returns icalrecurrencetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_rrule (icalproperty, icalrecurrencetype)
  is export
  is native(icalendar)
{ * }


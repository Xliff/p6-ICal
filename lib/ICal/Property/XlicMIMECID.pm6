use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/XlicMIMECID.pm6

class ICal::Property::XlicMIMECID is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::XlicMIMECID...";
    my $property = icalproperty_new_xlicmimecid($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_xlicmimecid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimecid(self.icalproperty, $v);
  }

}



sub icalproperty_new_xlicmimecid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimecid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimecid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


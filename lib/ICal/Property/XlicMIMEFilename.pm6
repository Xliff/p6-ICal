use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/XlicMIMEFilename.pm6

class ICal::Property::XlicMIMEFilename is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::XlicMIMEFilename...";
    my $property = icalproperty_new_xlicmimefilename($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_xlicmimefilename(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimefilename(self.icalproperty, $v);
  }

}



sub icalproperty_new_xlicmimefilename (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimefilename (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimefilename (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/XLicMIMEEncoding.pm6

class ICal::Property::XLicMIMEEncoding is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::XLicMIMEEncoding...";
    my $property = icalproperty_new_xlicmimeencoding($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_xlicmimeencoding(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimeencoding(self.icalproperty, $v);
  }

}



sub icalproperty_new_xlicmimeencoding (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_xlicmimeencoding (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_xlicmimeencoding (icalproperty, Str)
  is export
  is native(ical)
{ * }


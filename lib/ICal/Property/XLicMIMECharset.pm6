use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/XLicMIMECharset.pm6

class ICal::Property::XLicMIMECharset is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::XLicMIMECharset...";
    my $property = icalproperty_new_xlicmimecharset($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_xlicmimecharset(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimecharset(self.icalproperty, $v);
  }

}



sub icalproperty_new_xlicmimecharset (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_xlicmimecharset (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_xlicmimecharset (icalproperty, Str)
  is export
  is native(ical)
{ * }


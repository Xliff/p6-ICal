use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Multipart.pm6

class ICal::Property::Multipart is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Multipart...";
    my $property = icalproperty_new_multipart($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_multipart(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_multipart(self.icalproperty, $v);
  }

}



sub icalproperty_new_multipart (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_multipart (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_multipart (icalproperty, Str)
  is export
  is native(ical)
{ * }


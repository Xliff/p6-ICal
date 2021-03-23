use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/CSID.pm6

class ICal::Property::CSID is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::CSID...";
    my $property = icalproperty_new_csid($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_csid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_csid(self.icalproperty, $v);
  }

}



sub icalproperty_new_csid (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_csid (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_csid (icalproperty, Str)
  is export
  is native(ical)
{ * }


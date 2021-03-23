use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Categories.pm6

class ICal::Property::Categories is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Categories...";
    my $property = icalproperty_new_categories($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_categories(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_categories(self.icalproperty, $v);
  }

}



sub icalproperty_new_categories (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_categories (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_categories (icalproperty, Str)
  is export
  is native(ical)
{ * }


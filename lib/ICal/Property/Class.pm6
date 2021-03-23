use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Class.pm6

class ICal::Property::Class is ICal::Property {

  method new (icalproperty_class $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Class...";
    my $property = icalproperty_new_class($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_class(self.icalproperty);
  }

  method set (icalproperty_class $v) {
    icalproperty_set_class(self.icalproperty, $v);
  }

}



sub icalproperty_new_class (icalproperty_class)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_class (icalproperty)
  returns icalproperty_class
  is export
  is native(ical)
{ * }

sub icalproperty_set_class (icalproperty, icalproperty_class)
  is export
  is native(ical)
{ * }


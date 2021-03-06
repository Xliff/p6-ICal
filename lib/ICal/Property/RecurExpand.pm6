use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/RecurExpand.pm6

class ICal::Property::RecurExpand is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::RecurExpand...";
    my $property = icalproperty_new_recurexpand($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_recurexpand(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_recurexpand(self.icalproperty, $v);
  }

}



sub icalproperty_new_recurexpand (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_recurexpand (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_recurexpand (icalproperty, Str)
  is export
  is native(ical)
{ * }


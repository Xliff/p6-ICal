use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Comment.pm6

class ICal::Property::Comment is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::Comment...";
    my $property = icalproperty_new_comment($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_comment(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_comment(self.icalproperty, $v);
  }

}



sub icalproperty_new_comment (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_comment (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_comment (icalproperty, Str)
  is export
  is native(ical)
{ * }


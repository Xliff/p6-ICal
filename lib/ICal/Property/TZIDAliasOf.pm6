use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/TZIDAliasOf.pm6

class ICal::Property::TZIDAliasOf is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::TZIDAliasOf...";
    my $property = icalproperty_new_tzidaliasof($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_tzidaliasof(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_tzidaliasof(self.icalproperty, $v);
  }

}



sub icalproperty_new_tzidaliasof (Str)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_tzidaliasof (icalproperty)
  returns Str
  is export
  is native(ical)
{ * }

sub icalproperty_set_tzidaliasof (icalproperty, Str)
  is export
  is native(ical)
{ * }


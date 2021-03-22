use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/ExRule.pm6

class ICal::Property::ExRule is ICal::Property {

  method new (icalrecurrencetype() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::ExRule...";
    my $property = icalproperty_new_exrule($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_exrule(self.icalproperty);
  }

  method set (icalrecurrencetype() $v) {
    icalproperty_set_exrule(self.icalproperty, $v);
  }

}



sub icalproperty_new_exrule (icalrecurrencetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_exrule (icalproperty)
  returns icalrecurrencetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_exrule (icalproperty, icalrecurrencetype)
  is export
  is native(icalendar)
{ * }


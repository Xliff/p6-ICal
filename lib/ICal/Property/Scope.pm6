use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/Scope.pm6

class ICal::Property::Scope is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_scope($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_scope(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_scope(self.icalproperty, $v);
  }

}



sub icalproperty_new_scope (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_scope (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_scope (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


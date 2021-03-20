use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/XlicError.pm6

class ICal::Property::XlicError is ICal::Property {

  method new (Str() $var, *@params) {
    my $property = icalproperty_new_xlicerror($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_xlicerror(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicerror(self.icalproperty, $v);
  }

}



sub icalproperty_new_xlicerror (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicerror (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicerror (icalproperty, Str)
  is export
  is native(icalendar)
{ * }

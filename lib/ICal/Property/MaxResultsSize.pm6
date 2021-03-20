use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/MaxResultsSize.pm6

class ICal::Property::MaxResultsSize is ICal::Property {

  method new (Int() $var, *@params) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_maxresultssize($nv);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_maxresultssize(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_maxresultssize(self.icalproperty, $v);
  }

}



sub icalproperty_new_maxresultssize (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_maxresultssize (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_maxresultssize (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


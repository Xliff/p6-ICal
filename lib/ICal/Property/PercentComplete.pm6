use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/PercentComplete.pm6

class ICal::Property::PercentComplete is ICal::Property {

  method new (Int() $var, *@params) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_percentcomplete($nv);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }


  method get {
    icalproperty_get_percentcomplete(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_percentcomplete(self.icalproperty, $v);
  }

}



sub icalproperty_new_percentcomplete (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_percentcomplete (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_percentcomplete (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


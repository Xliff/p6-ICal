use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/PartStat.pm6

class ICal::Parameter::PartStat is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_partstat $nv        = $var;
    my                        $parameter = icalparameter_new_partstat($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_partstat(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_partstat(self.icalparameter, $v);
  }

}

sub icalparameter_new_partstat (icalparameter_partstat)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_partstat (icalparameter)
  returns icalparameter_partstat
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_partstat (icalparameter, icalparameter_partstat)
  is export
  is native(icalendar)
{ * }


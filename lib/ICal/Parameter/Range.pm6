use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Range.pm6

class ICal::Parameter::Range is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_range $nv        = $var;
    my                     $parameter = icalparameter_new_range($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_range(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_range(self.icalparameter, $v);
  }

}

sub icalparameter_new_range (icalparameter_range)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_range (icalparameter)
  returns icalparameter_range
  is export
  is native(ical)
{ * }

sub icalparameter_set_range (icalparameter, icalparameter_range)
  is export
  is native(ical)
{ * }


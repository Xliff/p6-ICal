use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Value.pm6

class ICal::Parameter::Value is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_value $nv        = $var;
    my                     $parameter = icalparameter_new_value($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_value(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_value(self.icalparameter, $v);
  }

}

sub icalparameter_new_value (icalparameter_value)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_value (icalparameter)
  returns icalparameter_value
  is export
  is native(ical)
{ * }

sub icalparameter_set_value (icalparameter, icalparameter_value)
  is export
  is native(ical)
{ * }


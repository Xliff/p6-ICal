use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Enable.pm6

class ICal::Parameter::Enable is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_enable $nv        = $var;
    my                      $parameter = icalparameter_new_enable($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_enable(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_enable(self.icalparameter, $v);
  }

}

sub icalparameter_new_enable (icalparameter_enable)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_enable (icalparameter)
  returns icalparameter_enable
  is export
  is native(ical)
{ * }

sub icalparameter_set_enable (icalparameter, icalparameter_enable)
  is export
  is native(ical)
{ * }


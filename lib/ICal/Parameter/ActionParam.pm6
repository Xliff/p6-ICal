use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/ActionParam.pm6

class ICal::Parameter::ActionParam is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_action $nv        = $var;
    my                      $parameter = icalparameter_new_actionparam($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_actionparam(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_actionparam(self.icalparameter, $v);
  }

}

sub icalparameter_new_actionparam (icalparameter_action)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_actionparam (icalparameter)
  returns icalparameter_action
  is export
  is native(ical)
{ * }

sub icalparameter_set_actionparam (icalparameter, icalparameter_action)
  is export
  is native(ical)
{ * }


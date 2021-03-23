use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/SubState.pm6

class ICal::Parameter::SubState is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_substate $nv        = $var;
    my                        $parameter = icalparameter_new_substate($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_substate(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_substate(self.icalparameter, $v);
  }

}

sub icalparameter_new_substate (icalparameter_substate)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_substate (icalparameter)
  returns icalparameter_substate
  is export
  is native(ical)
{ * }

sub icalparameter_set_substate (icalparameter, icalparameter_substate)
  is export
  is native(ical)
{ * }


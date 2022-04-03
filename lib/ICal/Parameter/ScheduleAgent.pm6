use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/ScheduleAgent.pm6

class ICal::Parameter::ScheduleAgent is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_scheduleagent $nv        = $var;
    my                             $parameter = icalparameter_new_scheduleagent($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_scheduleagent(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_scheduleagent(self.icalparameter, $v);
  }

}

sub icalparameter_new_scheduleagent (icalparameter_scheduleagent)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_scheduleagent (icalparameter)
  returns icalparameter_scheduleagent
  is export
  is native(ical)
{ * }

sub icalparameter_set_scheduleagent (icalparameter, icalparameter_scheduleagent)
  is export
  is native(ical)
{ * }


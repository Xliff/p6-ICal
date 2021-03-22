use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/ScheduleForceSend.pm6

class ICal::Parameter::ScheduleForceSend is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_scheduleforcesend $nv        = $var;
    my                                 $parameter = icalparameter_new_scheduleforcesend($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_scheduleforcesend(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_scheduleforcesend(self.icalparameter, $v);
  }

}

sub icalparameter_new_scheduleforcesend (icalparameter_scheduleforcesend)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_scheduleforcesend (icalparameter)
  returns icalparameter_scheduleforcesend
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_scheduleforcesend (icalparameter, icalparameter_scheduleforcesend)
  is export
  is native(icalendar)
{ * }


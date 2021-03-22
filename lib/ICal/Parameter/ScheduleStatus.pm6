use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/ScheduleStatus.pm6

class ICal::Parameter::ScheduleStatus is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_schedulestatus($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_schedulestatus(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_schedulestatus(self.icalparameter, $v);
  }

}

sub icalparameter_new_schedulestatus (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_schedulestatus (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_schedulestatus (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


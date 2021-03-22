use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Reason.pm6

class ICal::Parameter::Reason is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_required $nv        = $var;
    my                        $parameter = icalparameter_new_reason($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_reason(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_reason(self.icalparameter, $v);
  }

}

sub icalparameter_new_reason (icalparameter_required)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_reason (icalparameter)
  returns icalparameter_required
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_reason (icalparameter, icalparameter_required)
  is export
  is native(icalendar)
{ * }


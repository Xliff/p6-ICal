use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Display.pm6

class ICal::Parameter::Display is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_display $nv        = $var;
    my                       $parameter = icalparameter_new_display($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_display(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_display(self.icalparameter, $v);
  }

}

sub icalparameter_new_display (icalparameter_display)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_display (icalparameter)
  returns icalparameter_display
  is export
  is native(ical)
{ * }

sub icalparameter_set_display (icalparameter, icalparameter_display)
  is export
  is native(ical)
{ * }


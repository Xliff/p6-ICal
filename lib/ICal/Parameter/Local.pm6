use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Local.pm6

class ICal::Parameter::Local is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_local $nv        = $var;
    my                     $parameter = icalparameter_new_local($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_local(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_local(self.icalparameter, $v);
  }

}

sub icalparameter_new_local (icalparameter_local)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_local (icalparameter)
  returns icalparameter_local
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_local (icalparameter, icalparameter_local)
  is export
  is native(icalendar)
{ * }


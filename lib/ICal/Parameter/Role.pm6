use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Role.pm6

class ICal::Parameter::Role is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_role $nv        = $var;
    my                    $parameter = icalparameter_new_role($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_role(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_role(self.icalparameter, $v);
  }

}

sub icalparameter_new_role (icalparameter_role)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_role (icalparameter)
  returns icalparameter_role
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_role (icalparameter, icalparameter_role)
  is export
  is native(icalendar)
{ * }


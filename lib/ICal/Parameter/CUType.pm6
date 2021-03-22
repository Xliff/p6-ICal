use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/CUType.pm6

class ICal::Parameter::CUType is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_cutype $nv        = $var;
    my                      $parameter = icalparameter_new_cutype($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_cutype(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_cutype(self.icalparameter, $v);
  }

}

sub icalparameter_new_cutype (icalparameter_cutype)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_cutype (icalparameter)
  returns icalparameter_cutype
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_cutype (icalparameter, icalparameter_cutype)
  is export
  is native(icalendar)
{ * }


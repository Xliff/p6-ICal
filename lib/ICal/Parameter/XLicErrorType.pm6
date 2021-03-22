use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/XLicErrorType.pm6

class ICal::Parameter::XLicErrorType is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_xlicerrortype $nv        = $var;
    my                             $parameter = icalparameter_new_xlicerrortype($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_xlicerrortype(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_xlicerrortype(self.icalparameter, $v);
  }

}

sub icalparameter_new_xlicerrortype (icalparameter_xlicerrortype)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_xlicerrortype (icalparameter)
  returns icalparameter_xlicerrortype
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_xlicerrortype (icalparameter, icalparameter_xlicerrortype)
  is export
  is native(icalendar)
{ * }


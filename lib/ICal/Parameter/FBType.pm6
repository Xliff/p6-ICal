use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/FBType.pm6

class ICal::Parameter::FBType is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_fbtype $nv        = $var;
    my                      $parameter = icalparameter_new_fbtype($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_fbtype(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_fbtype(self.icalparameter, $v);
  }

}

sub icalparameter_new_fbtype (icalparameter_fbtype)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_fbtype (icalparameter)
  returns icalparameter_fbtype
  is export
  is native(ical)
{ * }

sub icalparameter_set_fbtype (icalparameter, icalparameter_fbtype)
  is export
  is native(ical)
{ * }


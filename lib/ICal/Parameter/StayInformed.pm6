use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/StayInformed.pm6

class ICal::Parameter::StayInformed is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_stayinformed $nv        = $var;
    my                            $parameter = icalparameter_new_stayinformed($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_stayinformed(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_stayinformed(self.icalparameter, $v);
  }

}

sub icalparameter_new_stayinformed (icalparameter_stayinformed)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_stayinformed (icalparameter)
  returns icalparameter_stayinformed
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_stayinformed (icalparameter, icalparameter_stayinformed)
  is export
  is native(icalendar)
{ * }


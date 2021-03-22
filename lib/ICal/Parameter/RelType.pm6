use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/RelType.pm6

class ICal::Parameter::RelType is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_reltype $nv        = $var;
    my                       $parameter = icalparameter_new_reltype($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_reltype(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_reltype(self.icalparameter, $v);
  }

}

sub icalparameter_new_reltype (icalparameter_reltype)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_reltype (icalparameter)
  returns icalparameter_reltype
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_reltype (icalparameter, icalparameter_reltype)
  is export
  is native(icalendar)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Related.pm6

class ICal::Parameter::Related is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_related $nv        = $var;
    my                       $parameter = icalparameter_new_related($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_related(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_related(self.icalparameter, $v);
  }

}

sub icalparameter_new_related (icalparameter_related)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_related (icalparameter)
  returns icalparameter_related
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_related (icalparameter, icalparameter_related)
  is export
  is native(icalendar)
{ * }


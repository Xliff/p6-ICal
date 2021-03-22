use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/PatchAction.pm6

class ICal::Parameter::PatchAction is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_patchaction $nv        = $var;
    my                           $parameter = icalparameter_new_patchaction($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_patchaction(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_patchaction(self.icalparameter, $v);
  }

}

sub icalparameter_new_patchaction (icalparameter_patchaction)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_patchaction (icalparameter)
  returns icalparameter_patchaction
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_patchaction (icalparameter, icalparameter_patchaction)
  is export
  is native(icalendar)
{ * }


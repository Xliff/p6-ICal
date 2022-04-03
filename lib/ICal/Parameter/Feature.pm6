use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Feature.pm6

class ICal::Parameter::Feature is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_feature $nv        = $var;
    my                       $parameter = icalparameter_new_feature($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_feature(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_feature(self.icalparameter, $v);
  }

}

sub icalparameter_new_feature (icalparameter_feature)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_feature (icalparameter)
  returns icalparameter_feature
  is export
  is native(ical)
{ * }

sub icalparameter_set_feature (icalparameter, icalparameter_feature)
  is export
  is native(ical)
{ * }


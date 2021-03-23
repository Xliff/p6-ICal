use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/XLicCompareType.pm6

class ICal::Parameter::XLicCompareType is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_xliccomparetype $nv        = $var;
    my                               $parameter = icalparameter_new_xliccomparetype($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_xliccomparetype(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_xliccomparetype(self.icalparameter, $v);
  }

}

sub icalparameter_new_xliccomparetype (icalparameter_xliccomparetype)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_xliccomparetype (icalparameter)
  returns icalparameter_xliccomparetype
  is export
  is native(ical)
{ * }

sub icalparameter_set_xliccomparetype (icalparameter, icalparameter_xliccomparetype)
  is export
  is native(ical)
{ * }


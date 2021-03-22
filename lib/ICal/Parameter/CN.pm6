use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/CN.pm6

class ICal::Parameter::CN is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_cn($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_cn(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_cn(self.icalparameter, $v);
  }

}

sub icalparameter_new_cn (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_cn (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_cn (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


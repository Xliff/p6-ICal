use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Reason.pm6

class ICal::Parameter::Reason is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_reason($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_reason(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_reason(self.icalparameter, $v);
  }

}

sub icalparameter_new_reason (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_reason (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_reason (icalparameter, Str)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/X.pm6

class ICal::Parameter::X is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_x($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_x(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_x(self.icalparameter, $v);
  }

}

sub icalparameter_new_x (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_x (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_x (icalparameter, Str)
  is export
  is native(ical)
{ * }


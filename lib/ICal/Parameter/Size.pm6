use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Size.pm6

class ICal::Parameter::Size is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_size($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_size(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_size(self.icalparameter, $v);
  }

}

sub icalparameter_new_size (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_size (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_size (icalparameter, Str)
  is export
  is native(ical)
{ * }


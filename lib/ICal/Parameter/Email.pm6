use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Email.pm6

class ICal::Parameter::Email is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_email($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_email(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_email(self.icalparameter, $v);
  }

}

sub icalparameter_new_email (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_email (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_email (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


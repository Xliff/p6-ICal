use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Options.pm6

class ICal::Parameter::Options is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_options($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_options(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_options(self.icalparameter, $v);
  }

}

sub icalparameter_new_options (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_options (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_options (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


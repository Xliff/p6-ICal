use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Localize.pm6

class ICal::Parameter::Localize is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_localize($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_localize(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_localize(self.icalparameter, $v);
  }

}

sub icalparameter_new_localize (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_localize (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_localize (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


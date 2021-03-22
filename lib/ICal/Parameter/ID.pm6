use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/ID.pm6

class ICal::Parameter::ID is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_id($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_id(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_id(self.icalparameter, $v);
  }

}

sub icalparameter_new_id (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_id (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_id (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


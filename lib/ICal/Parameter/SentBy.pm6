use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/SentBy.pm6

class ICal::Parameter::SentBy is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_sentby($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_sentby(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_sentby(self.icalparameter, $v);
  }

}

sub icalparameter_new_sentby (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_sentby (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_sentby (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


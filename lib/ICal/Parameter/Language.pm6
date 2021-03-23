use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Language.pm6

class ICal::Parameter::Language is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_language($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_language(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_language(self.icalparameter, $v);
  }

}

sub icalparameter_new_language (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_language (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_language (icalparameter, Str)
  is export
  is native(ical)
{ * }


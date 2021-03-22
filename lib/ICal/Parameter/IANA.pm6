use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/IANA.pm6

class ICal::Parameter::IANA is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_iana($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_iana(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_iana(self.icalparameter, $v);
  }

}

sub icalparameter_new_iana (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_iana (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_iana (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


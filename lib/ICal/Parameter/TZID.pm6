use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/TZID.pm6

class ICal::Parameter::TZID is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_tzid($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_tzid(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_tzid(self.icalparameter, $v);
  }

}

sub icalparameter_new_tzid (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_tzid (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_tzid (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


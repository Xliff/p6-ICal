use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/FmtType.pm6

class ICal::Parameter::FmtType is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_fmttype($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_fmttype(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_fmttype(self.icalparameter, $v);
  }

}

sub icalparameter_new_fmttype (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_fmttype (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_fmttype (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


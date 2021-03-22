use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Dir.pm6

class ICal::Parameter::Dir is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_dir($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_dir(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_dir(self.icalparameter, $v);
  }

}

sub icalparameter_new_dir (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_dir (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_dir (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


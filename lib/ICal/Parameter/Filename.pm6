use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Filename.pm6

class ICal::Parameter::Filename is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_filename($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_filename(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_filename(self.icalparameter, $v);
  }

}

sub icalparameter_new_filename (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_filename (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_filename (icalparameter, Str)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Modified.pm6

class ICal::Parameter::Modified is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_modified($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_modified(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_modified(self.icalparameter, $v);
  }

}

sub icalparameter_new_modified (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_modified (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_modified (icalparameter, Str)
  is export
  is native(ical)
{ * }


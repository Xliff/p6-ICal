use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Label.pm6

class ICal::Parameter::Label is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_label($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_label(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_label(self.icalparameter, $v);
  }

}

sub icalparameter_new_label (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_label (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_label (icalparameter, Str)
  is export
  is native(ical)
{ * }


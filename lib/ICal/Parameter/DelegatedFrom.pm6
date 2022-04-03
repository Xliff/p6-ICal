use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/DelegatedFrom.pm6

class ICal::Parameter::DelegatedFrom is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_delegatedfrom($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_delegatedfrom(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_delegatedfrom(self.icalparameter, $v);
  }

}

sub icalparameter_new_delegatedfrom (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_delegatedfrom (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_delegatedfrom (icalparameter, Str)
  is export
  is native(ical)
{ * }


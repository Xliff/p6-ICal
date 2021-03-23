use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/DelegatedTo.pm6

class ICal::Parameter::DelegatedTo is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_delegatedto($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_delegatedto(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_delegatedto(self.icalparameter, $v);
  }

}

sub icalparameter_new_delegatedto (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_delegatedto (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_delegatedto (icalparameter, Str)
  is export
  is native(ical)
{ * }


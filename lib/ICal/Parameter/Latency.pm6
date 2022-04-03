use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Latency.pm6

class ICal::Parameter::Latency is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_latency($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_latency(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_latency(self.icalparameter, $v);
  }

}

sub icalparameter_new_latency (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_latency (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_latency (icalparameter, Str)
  is export
  is native(ical)
{ * }


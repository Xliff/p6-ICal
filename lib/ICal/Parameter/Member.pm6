use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Member.pm6

class ICal::Parameter::Member is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_member($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_member(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_member(self.icalparameter, $v);
  }

}

sub icalparameter_new_member (Str)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_member (icalparameter)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_member (icalparameter, Str)
  is export
  is native(icalendar)
{ * }


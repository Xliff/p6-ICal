use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/PublicComment.pm6

class ICal::Parameter::PublicComment is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_publiccomment($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_publiccomment(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_publiccomment(self.icalparameter, $v);
  }

}

sub icalparameter_new_publiccomment (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_publiccomment (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_publiccomment (icalparameter, Str)
  is export
  is native(ical)
{ * }


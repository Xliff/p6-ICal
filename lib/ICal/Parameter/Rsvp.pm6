use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Rsvp.pm6

class ICal::Parameter::Rsvp is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_rsvp $nv        = $var;
    my                    $parameter = icalparameter_new_rsvp($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_rsvp(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_rsvp(self.icalparameter, $v);
  }

}

sub icalparameter_new_rsvp (icalparameter_rsvp)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_rsvp (icalparameter)
  returns icalparameter_rsvp
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_rsvp (icalparameter, icalparameter_rsvp)
  is export
  is native(icalendar)
{ * }


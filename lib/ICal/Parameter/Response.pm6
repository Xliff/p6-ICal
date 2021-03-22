use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Response.pm6

class ICal::Parameter::Response is ICal::Parameter {

  method new (Int() $var) {
    my int $nv        = $var;
    my     $parameter = icalparameter_new_response($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_response(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_response(self.icalparameter, $v);
  }

}

sub icalparameter_new_response (int)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_response (icalparameter)
  returns int
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_response (icalparameter, int)
  is export
  is native(icalendar)
{ * }


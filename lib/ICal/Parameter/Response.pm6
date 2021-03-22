use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Response.pm6

class ICal::Parameter::Response is ICal::Parameter {

  method new (Int() $var) {
    my uint32 $nv        = $var;
    my        $parameter = icalparameter_new_response($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_response(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_response(self.icalparameter, $v);
  }

}

sub icalparameter_new_response (uint32)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_response (icalparameter)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_response (icalparameter, uint32)
  is export
  is native(icalendar)
{ * }


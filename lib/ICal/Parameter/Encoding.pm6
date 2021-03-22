use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/Encoding.pm6

class ICal::Parameter::Encoding is ICal::Parameter {

  method new (Int() $var) {
    my icalparameter_encoding $nv        = $var;
    my                        $parameter = icalparameter_new_encoding($nv);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_encoding(self.icalparameter);
  }

  method set (Int() $v) {
    icalparameter_set_encoding(self.icalparameter, $v);
  }

}

sub icalparameter_new_encoding (icalparameter_encoding)
  returns icalparameter
  is export
  is native(icalendar)
{ * }

sub icalparameter_get_encoding (icalparameter)
  returns icalparameter_encoding
  is export
  is native(icalendar)
{ * }

sub icalparameter_set_encoding (icalparameter, icalparameter_encoding)
  is export
  is native(icalendar)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Parameter;

### lib/ICal/Parameter/ManagedID.pm6

class ICal::Parameter::ManagedID is ICal::Parameter {

  method new (Str() $var) {
    my $parameter = icalparameter_new_managedid($var);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method get {
    icalparameter_get_managedid(self.icalparameter);
  }

  method set (Str() $v) {
    icalparameter_set_managedid(self.icalparameter, $v);
  }

}

sub icalparameter_new_managedid (Str)
  returns icalparameter
  is export
  is native(ical)
{ * }

sub icalparameter_get_managedid (icalparameter)
  returns Str
  is export
  is native(ical)
{ * }

sub icalparameter_set_managedid (icalparameter, Str)
  is export
  is native(ical)
{ * }


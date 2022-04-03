use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Status.pm6

class ICal::Value::Status is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Status...";
    my icalproperty_status $nv = $var;
    my $value = icalvalue_new_status($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_status(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_status(self.icalvalue, $v);
  }

}

sub icalvalue_new_status (icalproperty_status)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_status (icalvalue)
  returns icalproperty_status
  is export
  is native(ical)
{ * }

sub icalvalue_set_status (icalvalue, icalproperty_status)
  is export
  is native(ical)
{ * }


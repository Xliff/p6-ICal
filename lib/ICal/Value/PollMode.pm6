use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/PollMode.pm6

class ICal::Value::PollMode is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::PollMode...";
    my icalproperty_pollmode $nv = $var;
    my $value = icalvalue_new_pollmode($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_pollmode(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_pollmode(self.icalvalue, $v);
  }

}

sub icalvalue_new_pollmode (icalproperty_pollmode)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_pollmode (icalvalue)
  returns icalproperty_pollmode
  is export
  is native(ical)
{ * }

sub icalvalue_set_pollmode (icalvalue, icalproperty_pollmode)
  is export
  is native(ical)
{ * }


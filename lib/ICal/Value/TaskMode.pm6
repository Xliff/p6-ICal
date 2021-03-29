use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/TaskMode.pm6

class ICal::Value::TaskMode is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::TaskMode...";
    my icalproperty_taskmode $nv = $var;
    my $value = icalvalue_new_taskmode($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_taskmode(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_taskmode(self.icalvalue, $v);
  }

}

sub icalvalue_new_taskmode (icalproperty_taskmode)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_taskmode (icalvalue)
  returns icalproperty_taskmode
  is export
  is native(ical)
{ * }

sub icalvalue_set_taskmode (icalvalue, icalproperty_taskmode)
  is export
  is native(ical)
{ * }


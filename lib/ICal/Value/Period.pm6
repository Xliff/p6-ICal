use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Period.pm6

class ICal::Value::Period is ICal::Value {

  method new (icalperiodtype $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Period...";
    my icalperiodtype $nv = $var;
    my $value = icalvaluehelper_new_period($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_period(self.icalvalue);
  }

  method set (icalperiodtype $v) {
    icalvalue_set_period(self.icalvalue, $v);
  }

}

sub icalvaluehelper_new_period (icalperiodtype)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_period (icalvalue)
  returns icalperiodtype
  is export
  is native(ical)
{ * }

sub icalvalue_set_period (icalvalue, icalperiodtype)
  is export
  is native(ical)
{ * }


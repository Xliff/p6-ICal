use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Trigger.pm6

class ICal::Value::Trigger is ICal::Value {

  method new (icaltriggertype $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Trigger...";
    my icaltriggertype $nv = $var;
    my $value = icalvaluehelper_new_trigger($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_trigger(self.icalvalue);
  }

  method set (icaltriggertype $v) {
    icalvalue_set_trigger(self.icalvalue, $v);
  }

}

sub icalvaluehelper_new_trigger (icaltriggertype)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_trigger (icalvalue)
  returns icaltriggertype
  is export
  is native(ical)
{ * }

sub icalvalue_set_trigger (icalvalue, icaltriggertype)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Action.pm6

class ICal::Value::Action is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Action...";
    my icalproperty_action $nv = $var;
    my $value = icalvalue_new_action($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_action(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_action(self.icalvalue, $v);
  }

}

sub icalvalue_new_action (icalproperty_action)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_action (icalvalue)
  returns icalproperty_action
  is export
  is native(ical)
{ * }

sub icalvalue_set_action (icalvalue, icalproperty_action)
  is export
  is native(ical)
{ * }


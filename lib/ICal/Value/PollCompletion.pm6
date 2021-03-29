use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/PollCompletion.pm6

class ICal::Value::PollCompletion is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::PollCompletion...";
    my icalproperty_pollcompletion $nv = $var;
    my $value = icalvalue_new_pollcompletion($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_pollcompletion(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_pollcompletion(self.icalvalue, $v);
  }

}

sub icalvalue_new_pollcompletion (icalproperty_pollcompletion)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_pollcompletion (icalvalue)
  returns icalproperty_pollcompletion
  is export
  is native(ical)
{ * }

sub icalvalue_set_pollcompletion (icalvalue, icalproperty_pollcompletion)
  is export
  is native(ical)
{ * }


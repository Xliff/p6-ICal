use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Cmd.pm6

class ICal::Value::Cmd is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Cmd...";
    my icalproperty_cmd $nv = $var;
    my $value = icalvalue_new_cmd($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_cmd(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_cmd(self.icalvalue, $v);
  }

}

sub icalvalue_new_cmd (icalproperty_cmd)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_cmd (icalvalue)
  returns icalproperty_cmd
  is export
  is native(ical)
{ * }

sub icalvalue_set_cmd (icalvalue, icalproperty_cmd)
  is export
  is native(ical)
{ * }


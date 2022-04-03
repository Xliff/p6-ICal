use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Float.pm6

class ICal::Value::Float is ICal::Value {

  method new (Num() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Float...";
    my num32 $nv = $var;
    my $value = icalvalue_new_float($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_float(self.icalvalue);
  }

  method set (Num() $v) {
    icalvalue_set_float(self.icalvalue, $v);
  }

}

sub icalvalue_new_float (num32)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_float (icalvalue)
  returns num32
  is export
  is native(ical)
{ * }

sub icalvalue_set_float (icalvalue, num32)
  is export
  is native(ical)
{ * }


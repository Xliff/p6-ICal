use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Boolean.pm6

class ICal::Value::Boolean is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Boolean...";
    my uint32 $nv = $var;
    my $value = icalvalue_new_boolean($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_boolean(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_boolean(self.icalvalue, $v);
  }

}

sub icalvalue_new_boolean (uint32)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_boolean (icalvalue)
  returns uint32
  is export
  is native(ical)
{ * }

sub icalvalue_set_boolean (icalvalue, uint32)
  is export
  is native(ical)
{ * }


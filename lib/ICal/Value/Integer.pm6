use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Integer.pm6

class ICal::Value::Integer is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Integer...";
    my uint32 $nv = $var;
    my $value = icalvalue_new_integer($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_integer(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_integer(self.icalvalue, $v);
  }

}

sub icalvalue_new_integer (uint32)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_integer (icalvalue)
  returns uint32
  is export
  is native(ical)
{ * }

sub icalvalue_set_integer (icalvalue, uint32)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/String.pm6

class ICal::Value::String is ICal::Value {

  method new (Str() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::String...";
    my Str $nv = $var;
    my $value = icalvalue_new_string($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_string(self.icalvalue);
  }

  method set (Str() $v) {
    icalvalue_set_string(self.icalvalue, $v);
  }

}

sub icalvalue_new_string (Str)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_string (icalvalue)
  returns Str
  is export
  is native(ical)
{ * }

sub icalvalue_set_string (icalvalue, Str)
  is export
  is native(ical)
{ * }


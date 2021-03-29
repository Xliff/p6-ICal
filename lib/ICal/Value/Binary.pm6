use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Binary.pm6

class ICal::Value::Binary is ICal::Value {

  method new (Str() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Binary...";
    my Str $nv = $var;
    my $value = icalvalue_new_binary($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_binary(self.icalvalue);
  }

  method set (Str() $v) {
    icalvalue_set_binary(self.icalvalue, $v);
  }

}

sub icalvalue_new_binary (Str)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_binary (icalvalue)
  returns Str
  is export
  is native(ical)
{ * }

sub icalvalue_set_binary (icalvalue, Str)
  is export
  is native(ical)
{ * }


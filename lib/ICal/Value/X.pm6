use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/X.pm6

class ICal::Value::X is ICal::Value {

  method new (Str() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::X...";
    my Str $nv = $var;
    my $value = icalvalue_new_x($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_x(self.icalvalue);
  }

  method set (Str() $v) {
    icalvalue_set_x(self.icalvalue, $v);
  }

}

sub icalvalue_new_x (Str)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_x (icalvalue)
  returns Str
  is export
  is native(ical)
{ * }

sub icalvalue_set_x (icalvalue, Str)
  is export
  is native(ical)
{ * }


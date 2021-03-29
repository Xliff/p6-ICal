use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Text.pm6

class ICal::Value::Text is ICal::Value {

  method new (Str() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Text...";
    my Str $nv = $var;
    my $value = icalvalue_new_text($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_text(self.icalvalue);
  }

  method set (Str() $v) {
    icalvalue_set_text(self.icalvalue, $v);
  }

}

sub icalvalue_new_text (Str)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_text (icalvalue)
  returns Str
  is export
  is native(ical)
{ * }

sub icalvalue_set_text (icalvalue, Str)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/URI.pm6

class ICal::Value::URI is ICal::Value {

  method new (Str() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::URI...";
    my Str $nv = $var;
    my $value = icalvalue_new_uri($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_uri(self.icalvalue);
  }

  method set (Str() $v) {
    icalvalue_set_uri(self.icalvalue, $v);
  }

}

sub icalvalue_new_uri (Str)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_uri (icalvalue)
  returns Str
  is export
  is native(ical)
{ * }

sub icalvalue_set_uri (icalvalue, Str)
  is export
  is native(ical)
{ * }


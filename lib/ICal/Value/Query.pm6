use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Query.pm6

class ICal::Value::Query is ICal::Value {

  method new (Str() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Query...";
    my Str $nv = $var;
    my $value = icalvalue_new_query($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_query(self.icalvalue);
  }

  method set (Str() $v) {
    icalvalue_set_query(self.icalvalue, $v);
  }

}

sub icalvalue_new_query (Str)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_query (icalvalue)
  returns Str
  is export
  is native(ical)
{ * }

sub icalvalue_set_query (icalvalue, Str)
  is export
  is native(ical)
{ * }


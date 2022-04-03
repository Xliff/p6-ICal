use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/UTCOffset.pm6

class ICal::Value::UTCOffset is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::UTCOffset...";
    my uint32 $nv = $var;
    my $value = icalvalue_new_utcoffset($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_utcoffset(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_utcoffset(self.icalvalue, $v);
  }

}

sub icalvalue_new_utcoffset (uint32)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_utcoffset (icalvalue)
  returns uint32
  is export
  is native(ical)
{ * }

sub icalvalue_set_utcoffset (icalvalue, uint32)
  is export
  is native(ical)
{ * }


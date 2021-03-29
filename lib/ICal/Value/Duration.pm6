use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Duration.pm6

class ICal::Value::Duration is ICal::Value {

  method new (icaldurationtype $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Duration...";
    my icaldurationtype $nv = $var;
    my $value = icalvaluehelper_new_duration($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_duration(self.icalvalue);
  }

  method set (icaldurationtype $v) {
    icalvalue_set_duration(self.icalvalue, $v);
  }

}

sub icalvaluehelper_new_duration (icaldurationtype)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_duration (icalvalue)
  returns icaldurationtype
  is export
  is native(ical)
{ * }

sub icalvalue_set_duration (icalvalue, icaldurationtype)
  is export
  is native(ical)
{ * }


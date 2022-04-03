use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/DateTime.pm6

class ICal::Value::DateTime is ICal::Value {

  method new (icaltimetype $var is copy, :$timezone) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::DateTime...";
    my icaltimetype $nv = $var;
    $var = icaltimetype.new($var, :$timezone) if $timezone;
    my $value = icalvaluehelper_new_datetime($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_datetime(self.icalvalue);
  }

  method set (icaltimetype $v) {
    icalvalue_set_datetime(self.icalvalue, $v);
  }

}

sub icalvaluehelper_new_datetime (icaltimetype)
  returns icalvalue
  is export
  is native(icalhelper)
{ * }

sub icalvalue_get_datetime (icalvalue)
  returns icaltimetype
  is export
  is native(ical)
{ * }

sub icalvalue_set_datetime (icalvalue, icaltimetype)
  is export
  is native(ical)
{ * }


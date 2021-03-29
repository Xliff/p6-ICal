use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/DateTimeDate.pm6

class ICal::Value::DateTimeDate is ICal::Value {

  method new (icaltimetype $var is copy, :$timezone) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::DateTimeDate...";
    my icaltimetype $nv = $var;
    $var = icaltimetype.new($var, :$timezone) if $timezone;
    my $value = icalvaluehelper_new_datetimedate($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_datetimedate(self.icalvalue);
  }

  method set (icaltimetype $v) {
    icalvalue_set_datetimedate(self.icalvalue, $v);
  }

}

sub icalvaluehelper_new_datetimedate (icaltimetype)
  returns icalvalue
  is export
  is native(icalhelper)
{ * }

sub icalvalue_get_datetimedate (icalvalue)
  returns icaltimetype
  is export
  is native(ical)
{ * }

sub icalvalue_set_datetimedate (icalvalue, icaltimetype)
  is export
  is native(ical)
{ * }


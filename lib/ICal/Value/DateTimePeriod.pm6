use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/DateTimePeriod.pm6

class ICal::Value::DateTimePeriod is ICal::Value {

  method new (icaldatetimeperiodtype $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::DateTimePeriod...";
    my icaldatetimeperiodtype $nv = $var;
    my $value = icalvaluehelper_new_datetimeperiod($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_datetimeperiod(self.icalvalue);
  }

  method set (icaldatetimeperiodtype $v) {
    icalvalue_set_datetimeperiod(self.icalvalue, $v);
  }

}

sub icalvaluehelper_new_datetimeperiod (icaldatetimeperiodtype)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_datetimeperiod (icalvalue)
  returns icaldatetimeperiodtype
  is export
  is native(ical)
{ * }

sub icalvalue_set_datetimeperiod (icalvalue, icaldatetimeperiodtype)
  is export
  is native(ical)
{ * }


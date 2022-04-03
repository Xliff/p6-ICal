use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Date.pm6

class ICal::Value::Date is ICal::Value {

  method new (icaltimetype $var is copy, :$timezone) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Date...";
    my icaltimetype $nv = $var;
    $var = icaltimetype.new($var, :$timezone) if $timezone;
    my $value = icalvaluehelper_new_date($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_date(self.icalvalue);
  }

  method set (icaltimetype $v) {
    icalvalue_set_date(self.icalvalue, $v);
  }

}

sub icalvaluehelper_new_date (icaltimetype)
  returns icalvalue
  is export
  is native(icalhelper)
{ * }

sub icalvalue_get_date (icalvalue)
  returns icaltimetype
  is export
  is native(ical)
{ * }

sub icalvalue_set_date (icalvalue, icaltimetype)
  is export
  is native(ical)
{ * }


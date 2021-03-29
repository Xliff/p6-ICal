use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/QueryLevel.pm6

class ICal::Value::QueryLevel is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::QueryLevel...";
    my icalproperty_querylevel $nv = $var;
    my $value = icalvalue_new_querylevel($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_querylevel(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_querylevel(self.icalvalue, $v);
  }

}

sub icalvalue_new_querylevel (icalproperty_querylevel)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_querylevel (icalvalue)
  returns icalproperty_querylevel
  is export
  is native(ical)
{ * }

sub icalvalue_set_querylevel (icalvalue, icalproperty_querylevel)
  is export
  is native(ical)
{ * }


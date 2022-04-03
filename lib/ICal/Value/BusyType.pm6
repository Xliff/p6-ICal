use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/BusyType.pm6

class ICal::Value::BusyType is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::BusyType...";
    my icalproperty_busytype $nv = $var;
    my $value = icalvalue_new_busytype($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_busytype(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_busytype(self.icalvalue, $v);
  }

}

sub icalvalue_new_busytype (icalproperty_busytype)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_busytype (icalvalue)
  returns icalproperty_busytype
  is export
  is native(ical)
{ * }

sub icalvalue_set_busytype (icalvalue, icalproperty_busytype)
  is export
  is native(ical)
{ * }


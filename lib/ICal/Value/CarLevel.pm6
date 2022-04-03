use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/CarLevel.pm6

class ICal::Value::CarLevel is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::CarLevel...";
    my icalproperty_carlevel $nv = $var;
    my $value = icalvalue_new_carlevel($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_carlevel(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_carlevel(self.icalvalue, $v);
  }

}

sub icalvalue_new_carlevel (icalproperty_carlevel)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_carlevel (icalvalue)
  returns icalproperty_carlevel
  is export
  is native(ical)
{ * }

sub icalvalue_set_carlevel (icalvalue, icalproperty_carlevel)
  is export
  is native(ical)
{ * }


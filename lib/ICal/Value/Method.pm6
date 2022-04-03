use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Method.pm6

class ICal::Value::Method is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Method...";
    my icalproperty_method $nv = $var;
    my $value = icalvalue_new_method($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_method(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_method(self.icalvalue, $v);
  }

}

sub icalvalue_new_method (icalproperty_method)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_method (icalvalue)
  returns icalproperty_method
  is export
  is native(ical)
{ * }

sub icalvalue_set_method (icalvalue, icalproperty_method)
  is export
  is native(ical)
{ * }


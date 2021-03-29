use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Class.pm6

class ICal::Value::Class is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Class...";
    my icalproperty_class $nv = $var;
    my $value = icalvalue_new_class($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_class(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_class(self.icalvalue, $v);
  }

}

sub icalvalue_new_class (icalproperty_class)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_class (icalvalue)
  returns icalproperty_class
  is export
  is native(ical)
{ * }

sub icalvalue_set_class (icalvalue, icalproperty_class)
  is export
  is native(ical)
{ * }


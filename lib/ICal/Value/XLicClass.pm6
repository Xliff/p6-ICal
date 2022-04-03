use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/XLicClass.pm6

class ICal::Value::XLicClass is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::XLicClass...";
    my icalproperty_xlicclass $nv = $var;
    my $value = icalvalue_new_xlicclass($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_xlicclass(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_xlicclass(self.icalvalue, $v);
  }

}

sub icalvalue_new_xlicclass (icalproperty_xlicclass)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_xlicclass (icalvalue)
  returns icalproperty_xlicclass
  is export
  is native(ical)
{ * }

sub icalvalue_set_xlicclass (icalvalue, icalproperty_xlicclass)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/CalAddress.pm6

class ICal::Value::CalAddress is ICal::Value {

  method new (Str() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::CalAddress...";
    my Str $nv = $var;
    my $value = icalvalue_new_caladdress($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_caladdress(self.icalvalue);
  }

  method set (Str() $v) {
    icalvalue_set_caladdress(self.icalvalue, $v);
  }

}

sub icalvalue_new_caladdress (Str)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_caladdress (icalvalue)
  returns Str
  is export
  is native(ical)
{ * }

sub icalvalue_set_caladdress (icalvalue, Str)
  is export
  is native(ical)
{ * }


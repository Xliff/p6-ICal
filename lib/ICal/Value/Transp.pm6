use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Transp.pm6

class ICal::Value::Transp is ICal::Value {

  method new (Int() $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Transp...";
    my icalproperty_transp $nv = $var;
    my $value = icalvalue_new_transp($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_transp(self.icalvalue);
  }

  method set (Int() $v) {
    icalvalue_set_transp(self.icalvalue, $v);
  }

}

sub icalvalue_new_transp (icalproperty_transp)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_transp (icalvalue)
  returns icalproperty_transp
  is export
  is native(ical)
{ * }

sub icalvalue_set_transp (icalvalue, icalproperty_transp)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/RequestStatus.pm6

class ICal::Value::RequestStatus is ICal::Value {

  method new (icalreqstattype $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::RequestStatus...";
    my icalreqstattype $nv = $var;
    my $value = icalvaluehelper_new_requeststatus($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_requeststatus(self.icalvalue);
  }

  method set (icalreqstattype $v) {
    icalvalue_set_requeststatus(self.icalvalue, $v);
  }

}

sub icalvaluehelper_new_requeststatus (icalreqstattype)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_requeststatus (icalvalue)
  returns icalreqstattype
  is export
  is native(ical)
{ * }

sub icalvalue_set_requeststatus (icalvalue, icalreqstattype)
  is export
  is native(ical)
{ * }


use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Attach.pm6

class ICal::Value::Attach is ICal::Value {

  method new (icalattach $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Attach...";
    my icalattach $nv = $var;
    my $value = icalvalue_new_attach($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_attach(self.icalvalue);
  }

  method set (icalattach $v) {
    icalvalue_set_attach(self.icalvalue, $v);
  }

}

sub icalvalue_new_attach (icalattach)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_attach (icalvalue)
  returns icalattach
  is export
  is native(ical)
{ * }

sub icalvalue_set_attach (icalvalue, icalattach)
  is export
  is native(ical)
{ * }


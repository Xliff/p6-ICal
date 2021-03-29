use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Recur.pm6

class ICal::Value::Recur is ICal::Value {

  method new (icalrecurrencetype $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Recur...";
    my icalrecurrencetype $nv = $var;
    my $value = icalvaluehelper_new_recur($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_recur(self.icalvalue);
  }

  method set (icalrecurrencetype $v) {
    icalvalue_set_recur(self.icalvalue, $v);
  }

}

sub icalvaluehelper_new_recur (icalrecurrencetype)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_recur (icalvalue)
  returns icalrecurrencetype
  is export
  is native(ical)
{ * }

sub icalvalue_set_recur (icalvalue, icalrecurrencetype)
  is export
  is native(ical)
{ * }


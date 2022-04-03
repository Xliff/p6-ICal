use v6;

use ICal::Raw::Types;

use ICal::Value;

### lib/ICal/Value/Geo.pm6

class ICal::Value::Geo is ICal::Value {

  method new (icalgeotype $var) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Value::Geo...";
    my icalgeotype $nv = $var;
    my $value = icalvaluehelper_new_geo($nv);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method get {
    icalvalue_get_geo(self.icalvalue);
  }

  method set (icalgeotype $v) {
    icalvalue_set_geo(self.icalvalue, $v);
  }

}

sub icalvaluehelper_new_geo (icalgeotype)
  returns icalvalue
  is export
  is native(ical)
{ * }

sub icalvalue_get_geo (icalvalue)
  returns icalgeotype
  is export
  is native(ical)
{ * }

sub icalvalue_set_geo (icalvalue, icalgeotype)
  is export
  is native(ical)
{ * }


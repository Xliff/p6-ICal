use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/ReplyURL.pm6

class ICal::Property::ReplyURL is ICal::Property {

  method new (Str() $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::ReplyURL...";
    my $property = icalproperty_new_replyurl($var);

    my $o = $property ?? self.bless( :$property) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_replyurl(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_replyurl(self.icalproperty, $v);
  }

}



sub icalproperty_new_replyurl (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_replyurl (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_replyurl (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


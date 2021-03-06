use v6;

use ICal::Raw::Types;

use ICal::Property;

### lib/ICal/Property/PollCompletion.pm6

class ICal::Property::PollCompletion is ICal::Property {

  method new (icalproperty_pollcompletion $var, *@params) {
    # To be removed or placed behind a sentinel...
    say "Creating a ICal::Property::PollCompletion...";
    my $property = icalproperty_new_pollcompletion($var);

    my $o = $property ?? self.bless( :$property ) !! Nil;
    $o.add_parameters(@params) if +@params;
    $o;
  }

  method get {
    icalproperty_get_pollcompletion(self.icalproperty);
  }

  method set (icalproperty_pollcompletion $v) {
    icalproperty_set_pollcompletion(self.icalproperty, $v);
  }

}



sub icalproperty_new_pollcompletion (icalproperty_pollcompletion)
  returns icalproperty
  is export
  is native(ical)
{ * }

sub icalproperty_get_pollcompletion (icalproperty)
  returns icalproperty_pollcompletion
  is export
  is native(ical)
{ * }

sub icalproperty_set_pollcompletion (icalproperty, icalproperty_pollcompletion)
  is export
  is native(ical)
{ * }


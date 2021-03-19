use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/Cmd.pm6

class ICal::Property::Cmd is ICal::Property {

  method new (icalproperty_cmd $var) {
    my $property = icalproperty_new_cmd($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_cmd(self.icalproperty);
  }

  method set (icalproperty_cmd $v) {
    icalproperty_set_cmd(self.icalproperty, $v);
  }

}
sub icalproperty_new_cmd (icalproperty_cmd)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_cmd (icalproperty)
  returns icalproperty_cmd
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_cmd (icalproperty, icalproperty_cmd)
  is export
  is native(icalendar)
{ * }


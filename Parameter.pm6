use v6.c;

use ICal::Raw::Types;
use ICal::Raw::Property;
use ICal::Raw::Parameter;

class ICal::Parameter {
  has icalparameter $!ip is implementor handles<p>;

  submethod BUILD (:$parameter) {
    $!ip = $parameter;
  }

  method new (Int() $kind) {
    my icalparameter_kind $k = $kind;
    my $parameter            = icalparameter_new($k);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method new_clone (icalparameter() $p) {
    my $parameter = icalparameter_new_clone($!ip, $p);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method new_from_string (Str() $value) {
    my $parameter = icalparameter_new_from_string($!ip, $value);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method new_from_value_string (Int() $kind, Str() $value) {
    my icalparameter_kind $k = $kind;

    my $parameter = icalparameter_new_from_value_string($!ip, $kind, $value);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method ICal::Raw::Definitions::icalparameter
  { $!ip }

  method as_ical_string {
    icalparameter_as_ical_string($!ip);
  }

  method as_ical_string_r {
    icalparameter_as_ical_string_r($!ip);
  }

  method free {
    icalparameter_free($!ip);
  }

  method get_iana_name {
    icalparameter_get_iana_name($!ip);
  }

  method get_iana_value {
    icalparameter_get_iana_value($!ip);
  }

  method get_parent (:$raw = False) {
    my $prop = icalparameter_get_parent($!ip);

    $prop ??
      ( $raw ?? $prop !! ::('ICal::Property').new($prop) )
      !!
      Nil;
  }

  method set_parent (icalproperty() $property) {
    icalparameter_set_parent($!ip, $property);
  }

  method value_to_value_kind {
    icalparameter_value_to_value_kind($!ip);
  }

  method get_xname {
    icalparameter_get_xname($!ip);
  }

  method get_xvalue {
    icalparameter_get_xvalue($!ip);
  }

  method has_same_name (icalparameter() $param2) {
    so icalparameter_has_same_name($!ip, $param2);
  }

  method isa {
    icalparameter_kindEnum( icalparameter_isa($!ip) );
  }

  method isa_parameter {
    so icalparameter_isa_parameter($!ip.p);
  }

  method kind_is_valid (ICal::Parameter:U: Int() $kind) {
    my icalparameter_kind $k = $kind;

    so icalparameter_kind_is_valid($k);
  }

  method kind_to_string {
    icalparameter_kind_to_string($!ip);
  }

  method set_iana_name (Str() $v) {
    icalparameter_set_iana_name($!ip, $v);
  }

  method set_iana_value (Str() $v) {
    icalparameter_set_iana_value($!ip, $v);
  }

  method set_xname (Str() $v) {
    icalparameter_set_xname($!ip, $v);
  }

  method set_xvalue (Str() $v) {
    icalparameter_set_xvalue($!ip, $v);
  }

  method string_to_kind (ICal::Parameter:U: Str() $str) {
    icalparameter_kindEnum( icalparameter_string_to_kind($str) )
  }

}

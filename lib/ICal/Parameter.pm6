use v6.c;

use Method::Also;

use ICal::Raw::Types;
use ICal::Raw::Property;
use ICal::Raw::Parameter;

class ICal::Parameter {
  has icalparameter $!ip is implementor handles<p>;

  submethod BUILD (:$parameter) {
    $!ip = $parameter;
  }

  method new ($parameter is copy) {
    say "P0: { $parameter.^name }" if $DEBUG;
    $parameter = do given $parameter {
      when .^can('icalparameter') { .icalparameter        }
      when icalparameter          { $_                    }
      when .^can('Int')           { .Int; proceed         }
      when Int                    { icalparameter_new($_) }
      
      default                     { die "Cannot create an ICal::Value from a { 
                                         .^name }";       }
    }    
    say "P1: { $parameter.^name }" if $DEBUG;
    
    $parameter ?? self.bless( :$parameter ) !! Nil;
  }


  method new_clone (icalparameter() $p) is also<new-clone> {
    my $parameter = icalparameter_new_clone($!ip, $p);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method new_from_string (Str() $value) is also<new-from-string> {
    my $parameter = icalparameter_new_from_string($!ip, $value);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method new_from_value_string (Int() $kind, Str() $value) is also<new-from-value-string> {
    my icalparameter_kind $k = $kind;

    my $parameter = icalparameter_new_from_value_string($!ip, $kind, $value);

    $parameter ?? self.bless( :$parameter ) !! Nil;
  }

  method ICal::Raw::Definitions::icalparameter
    is also<icalparameter>
  { $!ip }

  method as_ical_string 
    is also<
      as-ical-string
      Str
    > 
  {
    icalparameter_as_ical_string($!ip);
  }

  method as_ical_string_r is also<as-ical-string-r> {
    icalparameter_as_ical_string_r($!ip);
  }

  method free {
    icalparameter_free($!ip);
  }

  method get_iana_name is also<get-iana-name> {
    icalparameter_get_iana_name($!ip);
  }

  method get_iana_value is also<get-iana-value> {
    icalparameter_get_iana_value($!ip);
  }

  method get_parent (:$raw = False) 
    is also<
      get-parent
      parent
    > 
  {
    my $prop = icalparameter_get_parent($!ip);

    $prop ??
      ( $raw ?? $prop !! ::('ICal::Property').new($prop) )
      !!
      Nil;
  }

  method set_parent (icalproperty() $property) is also<set-parent> {
    icalparameter_set_parent($!ip, $property);
  }

  method value_to_value_kind is also<value-to-value-kind> {
    icalparameter_value_to_value_kind($!ip);
  }

  method get_xname 
    is also<
      get-xname
      xname
    > 
  {
    icalparameter_get_xname($!ip);
  }

  method get_xvalue 
    is also<
      get-xvalue
      xvalue
    > 
  {
    icalparameter_get_xvalue($!ip);
  }

  method has_same_name (icalparameter() $param2) is also<has-same-name> {
    so icalparameter_has_same_name($!ip, $param2);
  }

  method isa {
    icalparameter_kindEnum( icalparameter_isa($!ip) );
  }

  method isa_parameter is also<isa-parameter> {
    so icalparameter_isa_parameter($!ip.p);
  }

  method kind_is_valid (ICal::Parameter:U: Int() $kind) is also<kind-is-valid> {
    my icalparameter_kind $k = $kind;

    so icalparameter_kind_is_valid($k);
  }

  method kind_to_string is also<kind-to-string> {
    icalparameter_kind_to_string($!ip);
  }

  method set_iana_name (Str() $v) is also<set-iana-name> {
    icalparameter_set_iana_name($!ip, $v);
  }

  method set_iana_value (Str() $v) is also<set-iana-value> {
    icalparameter_set_iana_value($!ip, $v);
  }

  method set_xname (Str() $v) is also<set-xname> {
    icalparameter_set_xname($!ip, $v);
  }

  method set_xvalue (Str() $v) is also<set-xvalue> {
    icalparameter_set_xvalue($!ip, $v);
  }

  method string_to_kind (ICal::Parameter:U: Str() $str) 
    is also<string-to-kind> 
  {
    icalparameter_kindEnum( icalparameter_string_to_kind($str) )
  }

}

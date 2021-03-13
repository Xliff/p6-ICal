use v6.c;

use ICal::Raw::Types;
use ICal::Raw::Property;

use ICal::Parameter;
use ICal::Value;

class ICal::Property {
  has icalproperty $!ip is implementor handles<p>;

  submethod BUILD ( :$property ) {
    $!ip = $property;
  }

  method new (Int() $kind) {
    my icalproperty_kind $k        = $kind;
    my                   $property = icalproperty_new($k);

    $property ?? self.bless( :$property ) !! Nil;
  }

  method new_clone (icalproperty() $prop) {
    my $property = icalproperty_new_clone($!ip, $prop);

    $property ?? self.bless( :$property ) !! Nil;
  }

  method new_from_string (Str() $str) {
    my $property = icalproperty_new_from_string($!ip, $str);

    $property ?? self.bless( :$property ) !! Nil;
  }

  method new_impl (icalproperty_kind $kind) {
    icalproperty_new_impl($!ip, $kind);
  }

  method ICal::Raw::Definitions::icalproperty
  { $!ip }

  method add_parameter (icalparameter() $parameter) {
    icalproperty_add_parameter($!ip, $parameter);
  }

  method add_parameters (@parameters) {
    # The only point to using ArrayToCArray is for the automatic coersion
    # check.

    self.add_parameter($_) for ArrayToCArray(icalparameter, @parameters)[];
  }

  # method add_parameters (va_list $args) {
  #   icalproperty_add_parameters($!ip, $args);
  # }

  method as_ical_string {
    icalproperty_as_ical_string($!ip);
  }

  method as_ical_string_r {
    icalproperty_as_ical_string_r($!ip);
  }

  method count_parameters {
    icalproperty_count_parameters($!ip);
  }

  method enum_belongs_to_property (Int() $e) {
    my icalproperty_kind $ee = $e;

    so icalproperty_enum_belongs_to_property($!ip, $ee);
  }

  method enum_to_string (ICal::Property:U: Int() $e) {
    my icalproperty_kind $ee = $e;

    icalproperty_enum_to_string($ee);
  }

  method enum_to_string_r (ICal::Property:U: Int() $e) {
    my icalproperty_kind $ee = $e;

    icalproperty_enum_to_string_r($ee);
  }

  method free {
    icalproperty_free($!ip);
  }

  method get_first_parameter (Int() $kind, :$raw = False) {
    my icalparameter_kind $k = $kind;
    my                    $para = icalproperty_get_first_parameter($!ip, $kind);

    $para ??
      ( $raw ?? $para !! ICal::Parameter.new($para) )
      !!
      Nil;
  }

  method get_next_parameter (Int() $kind, :$raw = False) {
    my icalparameter_kind $k = $kind;
    my                    $para = icalproperty_get_next_parameter($!ip, $kind);

    $para ??
      ( $raw ?? $para !! ICal::Parameter.new($para) )
      !!
      Nil;
  }

  method get_parameter_as_string (Str() $name) {
    icalproperty_get_parameter_as_string($!ip, $name);
  }

  method get_parameter_as_string_r (Str() $name) {
    icalproperty_get_parameter_as_string_r($!ip, $name);
  }

  method get_property_name {
    icalproperty_get_property_name($!ip);
  }

  method get_property_name_r {
    icalproperty_get_property_name_r($!ip);
  }

  method get_value (:$raw = False) {
    my $v = icalproperty_get_value($!ip);

    $v ??
      ( $raw ?? $v !! ICal::Value.new($v) )
      !!
      Nil;
  }

  method get_value_as_string {
    icalproperty_get_value_as_string($!ip);
  }

  method get_value_as_string_r {
    icalproperty_get_value_as_string_r($!ip);
  }

  method get_x_name {
    icalproperty_get_x_name($!ip);
  }

  method icalvalue_get_parent (
    ICal::Property:U:
    icalvalue()            $value,
                           :$raw = False
  ) {
    my $prop = icalvalue_get_parent($value);

    $prop ??
      ( $raw ?? $prop !! ICal::Property.new($prop) )
      !!
      Nil;
  }

  method icalvalue_set_parent (
    ICal::Property:U:
    icalvalue()            $value,
    icalproperty()         $property
  ) {
    icalvalue_set_parent($value, $property);
  }

  method isa {
    icalproperty_kindEnum( icalproperty_isa($!ip) )
  }

  method isa_property {
    icalproperty_isa_property($!ip.p);
  }

  method kind_and_string_to_enum (Str() $str) {
    icalproperty_kind_and_string_to_enum($!ip, $str);
  }

  method kind_is_valid (ICal::Property:U: Int() $kind) {
    my icalproperty_kind $k = $kind;

    so icalproperty_kind_is_valid($k);
  }

  method kind_to_string (ICal::Property:U: Int() $kind) {
    my icalproperty_kind $k = $kind;

    icalproperty_kind_to_string($k);
  }

  method kind_to_value_kind (ICal::Property:U: $kind) {
    my icalproperty_kind $k = $kind;

    icalvalue_kindEnum( icalproperty_kind_to_value_kind($k) );
  }

  method method_to_string {
    icalproperty_method_to_string($!ip);
  }

  method normalize {
    icalproperty_normalize($!ip);
  }

  method remove_parameter_by_kind (Int() $kind) {
    my icalproperty_kind $k = $kind;

    icalproperty_remove_parameter_by_kind($!ip, $k);
  }

  method remove_parameter_by_name (Str() $name) {
    icalproperty_remove_parameter_by_name($!ip, $name);
  }

  method remove_parameter_by_ref (icalparameter() $param) {
    icalproperty_remove_parameter_by_ref($!ip, $param);
  }

  method set_parameter (icalparameter() $parameter) {
    icalproperty_set_parameter($!ip, $parameter);
  }

  method set_parameter_from_string (Str() $name, Str() $value) {
    icalproperty_set_parameter_from_string($!ip, $name, $value);
  }

  method set_value (icalvalue() $value) {
    icalproperty_set_value($!ip, $value);
  }

  method set_value_from_string (Str() $value, Str() $kind) {
    icalproperty_set_value_from_string($!ip, $value, $kind);
  }

  method set_x_name (Str() $name) {
    icalproperty_set_x_name($!ip, $name);
  }

  method status_to_string (ICal::Property:U: ) {
    icalproperty_status_to_string();
  }

  method string_to_kind (ICal::Property:U: Str() $str) {
    icalproperty_kindEnum( icalproperty_string_to_kind($str) );
  }

  method string_to_method (ICal::Property:U: Str() $str) {
    icalproperty_string_to_method($str);
  }

  method string_to_status (ICal::Property:U: Str() $str) {
    icalproperty_statusEnum( icalproperty_string_to_status($str) );
  }

  method value_kind_to_kind (ICal::Property:U: Int() $kind) {
    my icalvalue_kind $k = $kind;

    icalproperty_kindEnum( icalproperty_value_kind_to_kind($k) );
  }

  method get_datetime_with_component (icalcomponent() $comp) {
    icalproperty_get_datetime_with_component($!ip, $comp);
  }

}

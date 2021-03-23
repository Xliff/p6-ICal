use v6.c;

use Method::Also;

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

  method new_clone (icalproperty() $prop) is also<new-clone> {
    my $property = icalproperty_new_clone($!ip, $prop);

    $property ?? self.bless( :$property ) !! Nil;
  }

  method new_from_string (Str() $str) is also<new-from-string> {
    my $property = icalproperty_new_from_string($!ip, $str);

    $property ?? self.bless( :$property ) !! Nil;
  }

  method new_impl (icalproperty_kind $kind) is also<new-impl> {
    icalproperty_new_impl($!ip, $kind);
  }

  method ICal::Raw::Definitions::icalproperty
    is also<icalproperty>
  { $!ip }

  method add_parameter (icalparameter() $parameter) is also<add-parameter> {
    icalproperty_add_parameter($!ip, $parameter);
  }

  method add_parameters (@parameters) is also<add-parameters> {
    # The only point to using ArrayToCArray is for the automatic coersion
    # check.

    self.add_parameter($_) for ArrayToCArray(icalparameter, @parameters)[];
  }

  # method add_parameters (va_list $args) {
  #   icalproperty_add_parameters($!ip, $args);
  # }

  method as_ical_string is also<as-ical-string> {
    icalproperty_as_ical_string($!ip);
  }

  method as_ical_string_r is also<as-ical-string-r> {
    icalproperty_as_ical_string_r($!ip);
  }

  method count_parameters is also<count-parameters> {
    icalproperty_count_parameters($!ip);
  }

  method enum_belongs_to_property (Int() $e)
    is also<enum-belongs-to-property>
  {
    my icalproperty_kind $ee = $e;

    so icalproperty_enum_belongs_to_property($!ip, $ee);
  }

  method enum_to_string (ICal::Property:U: Int() $e) is also<enum-to-string> {
    my icalproperty_kind $ee = $e;

    icalproperty_enum_to_string($ee);
  }

  method enum_to_string_r (ICal::Property:U: Int() $e)
    is also<enum-to-string-r>
  {
    my icalproperty_kind $ee = $e;

    icalproperty_enum_to_string_r($ee);
  }

  method free {
    icalproperty_free($!ip);
  }

  method get_first_parameter (Int() $kind, :$raw = False)
    is also<get-first-parameter>
  {
    my icalparameter_kind $k = $kind;
    my                    $para = icalproperty_get_first_parameter($!ip, $kind);

    $para ??
      ( $raw ?? $para !! ICal::Parameter.new($para) )
      !!
      Nil;
  }

  method get_next_parameter (Int() $kind, :$raw = False)
    is also<get-next-parameter>
  {
    my icalparameter_kind $k = $kind;
    my                    $para = icalproperty_get_next_parameter($!ip, $kind);

    $para ??
      ( $raw ?? $para !! ICal::Parameter.new($para) )
      !!
      Nil;
  }

  method get_parameter_as_string (Str() $name)
    is also<get-parameter-as-string>
  {
    icalproperty_get_parameter_as_string($!ip, $name);
  }

  method get_parameter_as_string_r (Str() $name)
    is also<get-parameter-as-string-r>
  {
    icalproperty_get_parameter_as_string_r($!ip, $name);
  }

  method get_property_name is also<get-property-name> {
    icalproperty_get_property_name($!ip);
  }

  method get_property_name_r is also<get-property-name-r> {
    icalproperty_get_property_name_r($!ip);
  }

  method get_value (:$raw = False) is also<get-value> {
    my $v = icalproperty_get_value($!ip);

    $v ??
      ( $raw ?? $v !! ICal::Value.new($v) )
      !!
      Nil;
  }

  method get_value_as_string is also<get-value-as-string> {
    icalproperty_get_value_as_string($!ip);
  }

  method get_value_as_string_r is also<get-value-as-string-r> {
    icalproperty_get_value_as_string_r($!ip);
  }

  method get_x_name is also<get-x-name> {
    icalproperty_get_x_name($!ip);
  }

  method icalvalue_get_parent (
    ICal::Property:U:
    icalvalue()            $value,
                           :$raw = False
  )
    is also<icalvalue-get-parent>
  {
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
  )
    is also<icalvalue-set-parent>
  {
    icalvalue_set_parent($value, $property);
  }

  method isa {
    icalproperty_kindEnum( icalproperty_isa($!ip) )
  }

  method isa_property is also<isa-property> {
    icalproperty_isa_property($!ip.p);
  }

  method kind_and_string_to_enum (Str() $str)
    is also<kind-and-string-to-enum>
  {
    icalproperty_kind_and_string_to_enum($!ip, $str);
  }

  method kind_is_valid (ICal::Property:U: Int() $kind) is also<kind-is-valid> {
    my icalproperty_kind $k = $kind;

    so icalproperty_kind_is_valid($k);
  }

  method kind_to_string (ICal::Property:U: Int() $kind)
    is also<kind-to-string>
  {
    my icalproperty_kind $k = $kind;

    icalproperty_kind_to_string($k);
  }

  method kind_to_value_kind (ICal::Property:U: $kind)
    is also<kind-to-value-kind>
  {
    my icalproperty_kind $k = $kind;

    icalvalue_kindEnum( icalproperty_kind_to_value_kind($k) );
  }

  method method_to_string is also<method-to-string> {
    icalproperty_method_to_string($!ip);
  }

  method normalize {
    icalproperty_normalize($!ip);
  }

  method remove_parameter_by_kind (Int() $kind)
    is also<remove-parameter-by-kind>
  {
    my icalproperty_kind $k = $kind;

    icalproperty_remove_parameter_by_kind($!ip, $k);
  }

  method remove_parameter_by_name (Str() $name)
    is also<remove-parameter-by-name>
  {
    icalproperty_remove_parameter_by_name($!ip, $name);
  }

  method remove_parameter_by_ref (icalparameter() $param)
    is also<remove-parameter-by-ref>
  {
    icalproperty_remove_parameter_by_ref($!ip, $param);
  }

  method set_parameter (icalparameter() $parameter) is also<set-parameter> {
    icalproperty_set_parameter($!ip, $parameter);
  }

  method set_parameter_from_string (Str() $name, Str() $value)
    is also<set-parameter-from-string>
  {
    icalproperty_set_parameter_from_string($!ip, $name, $value);
  }

  method set_value (icalvalue() $value) is also<set-value> {
    icalproperty_set_value($!ip, $value);
  }

  method set_value_from_string (Str() $value, Str() $kind)
    is also<set-value-from-string>
  {
    icalproperty_set_value_from_string($!ip, $value, $kind);
  }

  method set_x_name (Str() $name) is also<set-x-name> {
    icalproperty_set_x_name($!ip, $name);
  }

  method status_to_string (ICal::Property:U: ) is also<status-to-string> {
    icalproperty_status_to_string();
  }

  method string_to_kind (ICal::Property:U: Str() $str)
    is also<string-to-kind>
  {
    icalproperty_kindEnum( icalproperty_string_to_kind($str) );
  }

  method string_to_method (ICal::Property:U: Str() $str)
    is also<string-to-method>
  {
    icalproperty_string_to_method($str);
  }

  method string_to_status (ICal::Property:U: Str() $str)
    is also<string-to-status>
  {
    icalproperty_statusEnum( icalproperty_string_to_status($str) );
  }

  method value_kind_to_kind (ICal::Property:U: Int() $kind)
    is also<value-kind-to-kind>
  {
    my icalvalue_kind $k = $kind;

    icalproperty_kindEnum( icalproperty_value_kind_to_kind($k) );
  }

  method get_datetime_with_component (icalcomponent() $comp)
    is also<get-datetime-with-component>
  {
    icalproperty_get_datetime_with_component($!ip, $comp);
  }

}

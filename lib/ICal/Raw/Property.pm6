use v6.c;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;
use ICal::Raw::Structs;

unit package ICal::Raw::Property;

### /usr/include/libical/icalproperty.h

sub icalproperty_add_parameter (icalproperty $prop, icalparameter $parameter)
  is native(icalendar)
  is export
{ * }

# sub icalproperty_add_parameters (icalproperty_impl $prop, va_list $args)
#   is native(icalendar)
#   is export
# { * }

sub icalproperty_as_ical_string (icalproperty $prop)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_as_ical_string_r (icalproperty $prop)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_count_parameters (icalproperty $prop)
  returns realInt
  is native(icalendar)
  is export
{ * }

sub icalproperty_enum_belongs_to_property (icalproperty_kind $kind, int32 $e)
  returns realInt
  is native(icalendar)
  is export
{ * }

sub icalproperty_enum_to_string (int32 $e)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_enum_to_string_r (int32 $e)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_free (icalproperty $prop)
  is native(icalendar)
  is export
{ * }

sub icalproperty_get_first_parameter (
  icalproperty       $prop,
  icalparameter_kind $kind
)
  returns icalparameter
  is native(icalendar)
  is export
{ * }

sub icalproperty_get_next_parameter (
  icalproperty       $prop,
  icalparameter_kind $kind
)
  returns icalparameter
  is native(icalendar)
  is export
{ * }

sub icalproperty_get_parameter_as_string (icalproperty $prop, Str $name)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_get_parameter_as_string_r (icalproperty $prop, Str $name)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_get_property_name (icalproperty $prop)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_get_property_name_r (icalproperty $prop)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_get_value (icalproperty $prop)
  returns icalvalue
  is native(icalendar)
  is export
{ * }

sub icalproperty_get_value_as_string (icalproperty $prop)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_get_value_as_string_r (icalproperty $prop)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_get_x_name (icalproperty $prop)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalparameter_get_parent (icalparameter $param)
  returns icalproperty
  is native(icalendar)
  is export
{ * }

sub icalparameter_set_parent (icalparameter $param, icalproperty $property)
  is native(icalendar)
  is export
{ * }

sub icalparameter_value_to_value_kind (icalparameter_value $value)
  returns icalvalue_kind
  is native(icalendar)
  is export
{ * }

sub icalvalue_get_parent (icalvalue $value)
  returns icalproperty
  is native(icalendar)
  is export
{ * }

sub icalvalue_set_parent (icalvalue $value, icalproperty $property)
  is native(icalendar)
  is export
{ * }

sub icalproperty_isa (icalproperty $property)
  returns icalproperty_kind
  is native(icalendar)
  is export
{ * }

sub icalproperty_isa_property (Pointer $property)
  returns realInt
  is native(icalendar)
  is export
{ * }

sub icalproperty_kind_and_string_to_enum (int32 $kind, Str $str)
  returns realInt
  is native(icalendar)
  is export
{ * }

sub icalproperty_kind_is_valid (icalproperty_kind $kind)
  returns realInt
  is native(icalendar)
  is export
{ * }

sub icalproperty_kind_to_string (icalproperty_kind $kind)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_kind_to_value_kind (icalproperty_kind $kind)
  returns icalvalue_kind
  is native(icalendar)
  is export
{ * }

sub icalproperty_method_to_string (icalproperty_method $method)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_new (icalproperty_kind $kind)
  returns icalproperty
  is native(icalendar)
  is export
{ * }

sub icalproperty_new_clone (icalproperty $prop)
  returns icalproperty
  is native(icalendar)
  is export
{ * }

sub icalproperty_new_from_string (Str $str)
  returns icalproperty
  is native(icalendar)
  is export
{ * }

sub icalproperty_new_impl (icalproperty_kind $kind)
  returns icalproperty
  is native(icalendar)
  is export
{ * }

sub icalproperty_normalize (icalproperty $prop)
  is native(icalendar)
  is export
{ * }

sub icalproperty_remove_parameter_by_kind (
  icalproperty       $prop,
  icalparameter_kind $kind
)
  is native(icalendar)
  is export
{ * }

sub icalproperty_remove_parameter_by_name (icalproperty $prop, Str $name)
  is native(icalendar)
  is export
{ * }

sub icalproperty_remove_parameter_by_ref (
  icalproperty  $prop,
  icalparameter $param
)
  is native(icalendar)
  is export
{ * }

sub icalproperty_set_parameter (icalproperty $prop, icalparameter $parameter)
  is native(icalendar)
  is export
{ * }

sub icalproperty_set_parameter_from_string (
  icalproperty $prop,
  Str          $name,
  Str          $value
)
  is native(icalendar)
  is export
{ * }

sub icalproperty_set_value (icalproperty $prop, icalvalue $value)
  is native(icalendar)
  is export
{ * }

sub icalproperty_set_value_from_string (
  icalproperty $prop,
  Str          $value,
  Str          $kind
)
  is native(icalendar)
  is export
{ * }

sub icalproperty_set_x_name (icalproperty $prop, Str $name)
  is native(icalendar)
  is export
{ * }

sub icalproperty_status_to_string ()
  returns Str
  is native(icalendar)
  is export
{ * }

sub icalproperty_string_to_kind (Str $string)
  returns icalproperty_kind
  is native(icalendar)
  is export
{ * }

sub icalproperty_string_to_method (Str $str)
  returns icalproperty_method
  is native(icalendar)
  is export
{ * }

sub icalproperty_string_to_status (Str $string)
  returns icalproperty_status
  is native(icalendar)
  is export
{ * }

sub icalproperty_value_kind_to_kind (icalvalue_kind $kind)
  returns icalproperty_kind
  is native(icalendar)
  is export
{ * }

### /usr/include/libical/icalcomponent.h

sub icalproperty_get_datetime_with_component (
  icalproperty  $prop,
  icalcomponent $comp
)
  returns icaltimetype
  is native(icalendar)
  is export
{ * }

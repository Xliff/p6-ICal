use v6.c;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;
use ICal::Raw::Structs;

unit package ICal::Raw::Component;

### /usr/include/libical/icalcomponent.h

sub icalcomponent_add_component (icalcomponent $parent, icalcomponent $child)
  is native(ical)
  is export
{ * }

sub icalcomponent_add_property (
  icalcomponent $component,
  icalproperty  $property
)
  is native(ical)
  is export
{ * }

sub icalcomponent_as_ical_string (icalcomponent $component)
  returns Str
  is native(ical)
  is export
{ * }

sub icalcomponent_as_ical_string_r (icalcomponent $component)
  returns Str
  is native(ical)
  is export
{ * }

sub icalcomponent_begin_component (
  icalcomponent      $component,
  icalcomponent_kind $kind
)
  returns icalcompiter
  is native(ical)
  is export
{ * }

sub icalcomponent_check_restrictions (icalcomponent $comp)
  returns realInt
  is native(ical)
  is export
{ * }

sub icalcomponent_convert_errors (icalcomponent $component)
  is native(ical)
  is export
{ * }

sub icalcomponent_count_components (
  icalcomponent      $component,
  icalcomponent_kind $kind
)
  returns realInt
  is native(ical)
  is export
{ * }

sub icalcomponent_count_errors (icalcomponent $component)
  returns realInt
  is native(ical)
  is export
{ * }

sub icalcomponent_count_properties (
  icalcomponent     $component,
  icalproperty_kind $kind
)
  returns realInt
  is native(ical)
  is export
{ * }

sub icalcomponent_end_component (
  icalcomponent      $component,
  icalcomponent_kind $kind
)
  returns icalcompiter
  is native(ical)
  is export
{ * }

sub icalcomponent_free (icalcomponent $component)
  is native(ical)
  is export
{ * }

sub icalcomponent_get_comment (icalcomponent $comp)
  returns Str
  is native(ical)
  is export
{ * }

sub icalcomponent_get_current_component (icalcomponent $component)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_get_current_property (icalcomponent $component)
  returns icalproperty
  is native(ical)
  is export
{ * }

sub icalcomponent_get_description (icalcomponent $comp)
  returns Str
  is native(ical)
  is export
{ * }

sub icalcomponent_get_dtend (icalcomponent $comp)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icalcomponent_get_dtstamp (icalcomponent $comp)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icalcomponent_get_dtstart (icalcomponent $comp)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icalcomponent_get_due (icalcomponent $comp)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icalcomponent_get_duration (icalcomponent $comp)
  returns icaldurationtype
  is native(ical)
  is export
{ * }

sub icalcomponent_get_first_component (
  icalcomponent      $component,
  icalcomponent_kind $kind
)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_get_first_property (
  icalcomponent     $component,
  icalproperty_kind $kind
)
  returns icalproperty
  is native(ical)
  is export
{ * }

sub icalcomponent_get_first_real_component (icalcomponent $c)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_get_inner (icalcomponent $comp)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_get_location (icalcomponent $comp)
  returns Str
  is native(ical)
  is export
{ * }

sub icalcomponent_get_method (icalcomponent $comp)
  returns icalproperty_method
  is native(ical)
  is export
{ * }

sub icalcomponent_get_next_component (
  icalcomponent      $component,
  icalcomponent_kind $kind
)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_get_next_property (
  icalcomponent     $component,
  icalproperty_kind $kind
)
  returns icalproperty
  is native(ical)
  is export
{ * }

sub icalcomponent_get_parent (icalcomponent $component)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_get_recurrenceid (icalcomponent $comp)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icalcomponent_get_relcalid (icalcomponent $comp)
  returns Str
  is native(ical)
  is export
{ * }

sub icalcomponent_get_sequence (icalcomponent $comp)
  returns realInt
  is native(ical)
  is export
{ * }

sub icalcomponent_get_span (icalcomponent $comp)
  returns icaltime_span
  is native(ical)
  is export
{ * }

sub icalcomponent_get_status (icalcomponent $comp)
  returns icalproperty_status
  is native(ical)
  is export
{ * }

sub icalcomponent_get_summary (icalcomponent $comp)
  returns Str
  is native(ical)
  is export
{ * }

sub icalcomponent_get_uid (icalcomponent $comp)
  returns Str
  is native(ical)
  is export
{ * }

sub icalcompiter_deref (icalcompiter $i)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcompiter_next (icalcompiter $i)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcompiter_prior (icalcompiter $i)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalproperty_get_datetime_with_component (
  icalproperty  $prop,
  icalcomponent $comp
)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icalproperty_get_parent (icalproperty $property)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalproperty_set_parent (icalproperty $property, icalcomponent $component)
  is native(ical)
  is export
{ * }

sub icalcomponent_is_valid (icalcomponent $component)
  returns realInt
  is native(ical)
  is export
{ * }

sub icalcomponent_isa (icalcomponent $component)
  returns icalcomponent_kind
  is native(ical)
  is export
{ * }

sub icalcomponent_isa_component (Pointer $component)
  returns realInt
  is native(ical)
  is export
{ * }

sub icalcomponent_kind_is_valid (icalcomponent_kind $kind)
  returns realInt
  is native(ical)
  is export
{ * }

sub icalcomponent_kind_to_string (icalcomponent_kind $kind)
  returns Str
  is native(ical)
  is export
{ * }

sub icalcomponent_merge_component (
  icalcomponent $comp,
  icalcomponent $comp_to_merge
)
  is native(ical)
  is export
{ * }

sub icalcomponent_new (icalcomponent_kind $kind)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_clone (icalcomponent $component)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_from_string (Str $str)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_vagenda ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_valarm ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_vavailability ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_vcalendar ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_vevent ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_vfreebusy ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_vjournal ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_vpatch ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_vpoll ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_vquery ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_vtimezone ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_vtodo ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_x (Str $x_name)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_xavailable ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_xdaylight ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_xpatch ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_xstandard ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_new_xvote ()
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcomponent_normalize (icalcomponent $comp)
  is native(ical)
  is export
{ * }

sub icalcomponent_remove_component (
  icalcomponent $parent,
  icalcomponent $child
)
  is native(ical)
  is export
{ * }

sub icalcomponent_remove_property (
  icalcomponent $component,
  icalproperty  $property
)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_comment (icalcomponent $comp, Str $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_description (icalcomponent $comp, Str $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_dtend (icalcomponent $comp, icaltimetype $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_dtstamp (icalcomponent $comp, icaltimetype $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_dtstart (icalcomponent $comp, icaltimetype $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_due (icalcomponent $comp, icaltimetype $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_duration (icalcomponent $comp, icaldurationtype $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_location (icalcomponent $comp, Str $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_method (icalcomponent $comp, icalproperty_method $method)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_parent (icalcomponent $component, icalcomponent $parent)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_recurrenceid (icalcomponent $comp, icaltimetype $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_relcalid (icalcomponent $comp, Str $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_sequence (icalcomponent $comp, realInt $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_status (icalcomponent $comp, icalproperty_status $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_summary (icalcomponent $comp, Str $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_set_uid (icalcomponent $comp, Str $v)
  is native(ical)
  is export
{ * }

sub icalcomponent_string_to_kind (Str $string)
  returns icalcomponent_kind
  is native(ical)
  is export
{ * }

sub icalcomponent_strip_errors (icalcomponent $component)
  is native(ical)
  is export
{ * }

# sub icalcomponent_vanew (icalcomponent_kind $kind, ...)
#   returns icalcomponent
#   is native(ical)
#   is export
# { * }

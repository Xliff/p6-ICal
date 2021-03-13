use v6.c;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;
use ICal::Raw::Structs;

unit package ICal::Raw::Timezone;

### /usr/include/libical/icaltimezone.h

sub icaltimezone_array_append_from_vtimezone (
  icalarray $timezones,
  icalcomponent $child
)
  is native(icalendar)
  is export
{ * }

sub icaltimezone_array_free (icalarray $timezones)
  is native(icalendar)
  is export
{ * }

sub icaltimezone_array_new ()
  returns icalarray
  is native(icalendar)
  is export
{ * }

sub icaltimezone_convert_time (
  icaltimetype $tt,
  icaltimezone $from_zone,
  icaltimezone $to_zone
)
  is native(icalendar)
  is export
{ * }

sub icaltimezone_copy (icaltimezone $originalzone)
  returns icaltimezone
  is native(icalendar)
  is export
{ * }

sub icaltimezone_dump_changes (
  icaltimezone $zone,
  uint32       $max_year,
  Pointer      $fp
)
  returns uint32
  is native(icalendar)
  is export
{ * }

sub icaltimezone_expand_vtimezone (
  icalcomponent $comp,
  uint32        $end_year,
  icalarray     $changes
)
  is native(icalendar)
  is export
{ * }

sub icaltimezone_free (icaltimezone $zone, uint32 $free_struct)
  is native(icalendar)
  is export
{ * }

sub icaltimezone_free_builtin_timezones ()
  is native(icalendar)
  is export
{ * }

sub free_zone_directory ()
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_builtin_timezone (Str $location)
  returns icaltimezone
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_builtin_timezone_from_offset (uint32 $offset, Str $tzname)
  returns icaltimezone
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_builtin_timezone_from_tzid (Str $tzid)
  returns icaltimezone
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_builtin_timezones ()
  returns icalarray
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_builtin_tzdata ()
  returns uint32
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_component (icaltimezone $zone)
  returns icalcomponent
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_display_name (icaltimezone $zone)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_latitude (icaltimezone $zone)
  returns double
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_location (icaltimezone $zone)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_location_from_vtimezone (icalcomponent $component)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_longitude (icaltimezone $zone)
  returns double
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_tzid (icaltimezone $zone)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_tznames (icaltimezone $zone)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_tznames_from_vtimezone (icalcomponent $component)
  returns Str
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_utc_offset (
  icaltimezone $zone,
  icaltimetype $tt,
  uint32       $is_daylight is rw
)
  returns uint32
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_utc_offset_of_utc_time (
  icaltimezone $zone,
  icaltimetype $tt,
  uint32       $is_daylight is rw
)
  returns uint32
  is native(icalendar)
  is export
{ * }

sub icaltimezone_get_utc_timezone ()
  returns icaltimezone
  is native(icalendar)
  is export
{ * }

sub icaltimezone_new ()
  returns icaltimezone
  is native(icalendar)
  is export
{ * }

sub icaltimezone_release_zone_tab ()
  is native(icalendar)
  is export
{ * }

sub icaltimezone_set_builtin_tzdata (uint32 $set)
  is native(icalendar)
  is export
{ * }

sub icaltimezone_set_component (icaltimezone $zone, icalcomponent $comp)
  returns uint32
  is native(icalendar)
  is export
{ * }

sub icaltimezone_set_tzid_prefix (Str $new_prefix)
  is native(icalendar)
  is export
{ * }

sub set_zone_directory (Str $path)
  is native(icalendar)
  is export
{ * }


sub icaltimezone_truncate_vtimezone (
  icalcomponent $vtz,
  icaltimetype  $start,
  icaltimetype  $end,
  uint32        $ms_compatible
)
  is native(icalendar)
  is export
{ * }

# LIBRARY INTERNAL ONLY! 
# sub icaltimezone_tzid_prefix ()
#   returns Str
#   is native(icalendar)
#   is export
# { * }

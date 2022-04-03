use v6;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Structs;
use ICal::Raw::Enums;

unit package ICal::Raw::Recur;

### /usr/include/libical/icalrecur.h

sub icalrecur_expand_recurrence (
  Str            $rule,
  time_t         $start,
  uint8          $count,
  CArray[time_t] $array
)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalrecur_freq_to_string (icalrecurrencetype_frequency $kind)
  returns Str
  is native(ical)
  is export
{ * }

sub icalrecurrencetype_as_string (icalrecurrencetype $recur)
  returns Str
  is native(ical)
  is export
{ * }

sub icalrecurrencetype_as_string_r (icalrecurrencetype $recur)
  returns Str
  is native(ical)
  is export
{ * }

sub icalrecurrencetype_clear (icalrecurrencetype $r)
  is native(ical)
  is export
{ * }

sub icalrecurrencetype_day_day_of_week (short $day)
  returns icalrecurrencetype_weekday
  is native(ical)
  is export
{ * }

sub icalrecurrencetype_day_position (short $day)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalrecurrencetype_from_string (Str $str)
  returns icalrecurrencetype
  is native(ical)
  is export
{ * }

sub icalrecurrencetype_month_is_leap (short $month)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalrecurrencetype_month_month (short $month)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalrecurrencetype_rscale_is_supported ()
  returns uint32
  is native(ical)
  is export
{ * }

sub icalrecurrencetype_rscale_supported_calendars ()
  returns icalarray
  is native(ical)
  is export
{ * }

sub icalrecur_iterator_free ()
  is native(ical)
  is export
{ * }

sub icalrecur_iterator_new (icalrecurrencetype $rule, icaltimetype $dtstart)
  returns icalrecur_iterator
  is native(ical)
  is export
{ * }

sub icalrecur_iterator_next ()
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icalrecur_iterator_set_start (
  icalrecur_iterator $impl,
  icaltimetype       $start
)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalrecur_skip_to_string (icalrecurrencetype_skip $kind)
  returns Str
  is native(ical)
  is export
{ * }

sub icalrecur_string_to_freq (Str $str)
  returns icalrecurrencetype_frequency
  is native(ical)
  is export
{ * }

sub icalrecur_string_to_skip (Str $str)
  returns icalrecurrencetype_skip
  is native(ical)
  is export
{ * }

sub icalrecur_string_to_weekday (Str $str)
  returns icalrecurrencetype_weekday
  is native(ical)
  is export
{ * }

sub icalrecur_weekday_to_string (icalrecurrencetype_weekday $kind)
  returns Str
  is native(ical)
  is export
{ * }

use v6;

use MONKEY-TYPING;

use NativeCall;
use Method::Also;

use ICal::Raw::Definitions;
use ICal::Raw::Duration;
use ICal::Raw::Enums;
use ICal::Raw::Structs;

use ICal::Timezone;

augment class icaltimetype {

  method null_date {
    icaltimehelper_null_date();
  }

  method null_time {
    icaltimehelper_null_time();
  }

  method from_day_of_year (Int() $year) {
    my uint32 $y = $year;

    icaltimehelper_from_day_of_year(self, $y);
  }

  method from_string (Str() $str) {
    icaltimehelper_from_string($str);
  }

  method from_timet_with_zone (Int() $is_date, icaltimezone() $zone) {
    my uint32 $i = $is_date.so.Int;

    icaltimehelper_from_timet_with_zone(self, $i, $zone);
  }

  method current_time_with_zone (icaltimetype:U: icaltimezone() $zone)
    is also<
      current-time-with-zone
      new_current_time_with_zone
      new-current-time-with-zone
    >
  {
    icaltimehelper_current_time_with_zone($zone);
  }

  method today
    is also<
      new_today
      new-today
    >
  {
    icaltimehelper_today();
  }

  method adjust (Int() $days, Int() $hours, Int() $minutes, Int() $seconds) {
    my uint32 ($d, $h, $m, $s) = ($days, $hours, $minutes, $seconds);

    icaltime_adjust(self, $days, $hours, $minutes, $seconds);
  }

  method as_ical_string {
    icaltimehelper_as_ical_string(self);
  }

  method as_ical_string_r {
    icaltimehelper_as_ical_string_r(self);
  }

  # Returns now as time_t
  method as_timet {
    icaltimehelper_as_timet();
  }

  method as_timet_with_zone (icaltimezone() $zone) {
    icaltimehelper_as_timet_with_zone(self, $zone);
  }

  method compare (icaltimetype() $b) {
    icaltimehelper_compare(self, $b);
  }

  method compare_date_only (icaltimetype() $b) {
    icaltimehelper_compare_date_only(self, $b);
  }

  method compare_date_only_tz (icaltimetype() $b, icaltimezone() $tz) {
    icaltimehelper_compare_date_only_tz(self, $b, $tz);
  }

  method convert_to_zone (icaltimezone() $zone) {
    icaltimehelper_convert_to_zone(self, $zone);
  }

  method day_of_week {
    icaltimehelper_day_of_week(self);
  }

  method day_of_year {
    icaltimehelper_day_of_year(self);
  }

  method days_in_month (Int() $year) {
    my uint32 $y = $year;

    icaltimehelper_days_in_month(self, $y);
  }

  method days_in_year {
    icaltimehelper_days_in_year(self);
  }

  method get_timezone (:$raw = False) {
    my $tz = icaltimehelper_get_timezone(self);

    $tz ??
      ( $raw ?? $tz !! ICal::Timezone.new($tz) )
      !!
      Nil;
  }

  method get_tzid {
    icaltimehelper_get_tzid(self);
  }

  # cw: Eschewing this for the member. Leaving the raw sub for purists, but
  #     it's all a variant of the same.
  # method is_date {
  #   return icaltimehelper_is_date(self);
  # }

  method is_leap_year {
    so icaltimehelper_is_leap_year(self);
  }

  method is_null_time {
    so icaltimehelper_is_null_time(self);
  }

  method is_utc {
    so icaltimehelper_is_utc(self);
  }

  method is_valid_time {
    so icaltimehelper_is_valid_time(self);
  }

  method normalize {
    icaltimehelper_normalize(self);
  }

  method set_timezone (icaltimezone() $zone) {
    icaltimehelper_set_timezone(self, $zone);
  }

  method start_doy_week (Int() $fdow) {
    my uint32 $f = $fdow;

    icaltimehelper_start_doy_week(self, $f);
  }

  method week_number {
    icaltimehelper_week_number(self);
  }

  multi method add (icaltimetype:U: icaltimetype() $t, icaldurationtype() $d) {
    icaltimehelper_add($t, $d);
  }
  multi method add (icaldurationtype() $d) {
    icaltimetype.add(self, $d);
  }

  multi method subtract (icaltimetype:U: icaltimetype() $t2) {
    icaltimehelper_subtract(self, $t2);
  }
  multi method subtract (icaltimetype() $t2) {
    icaltimetype.subtract(self, $t2);
  }

}

augment class icaltime_span {

  method new (icaltimetype() $dtstart, icaltimetype() $dtend, Int() $is_busy) {
    my uint32 $i = $is_busy.Int.so;

    icaltimehelper_span_new($dtstart, $dtend, $i);
  }

  proto method overlaps (|)
    is also<span-overlaps>
  { * }

  multi method overlaps (
    icaltime_span:U:
    icaltime_span() $s1,
    icaltime_span() $s2
  ) {
    $s1.overlaps($s2);
  }
  multi method span_overlaps (icaltime_span:D: icaltime_span() $s2) {
    icaltimehelper_span_overlaps(self, $s2);
  }

  multi method contains (
    icaltime_span:U:
    icaltime_span() $s1,
    icaltime_span() $s2
  ) {
    $s1.contains($s2);
  }
  multi method contains (icaltime_span:D: icaltime_span() $container) {
    icaltimehelper_span_contains(self, $container);
  }

}

### /usr/include/libical/icaltime.h

sub icaltime_adjust (
  icaltimetype $tt,
  uint32       $days,
  uint32       $hours,
  uint32       $minutes,
  uint32       $seconds
)
  is native(ical)
  is export
{ * }

sub icaltimehelper_as_ical_string (icaltimetype $tt)
  returns Str
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_as_ical_string_r (icaltimetype $tt)
  returns Str
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_as_timet ()
  returns time_t
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_as_timet_with_zone (icaltimetype $tt, icaltimezone $zone)
  returns time_t
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_compare (icaltimetype $a, icaltimetype $b)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_compare_date_only (icaltimetype $a, icaltimetype $b)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_compare_date_only_tz (
  icaltimetype $a,
  icaltimetype $b,
  icaltimezone $tz
)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_convert_to_zone (icaltimetype $tt, icaltimezone $zone)
  returns icaltimetype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_current_time_with_zone (icaltimezone $zone)
  returns icaltimetype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_day_of_week (icaltimetype $t)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_day_of_year (icaltimetype $t)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_days_in_month (uint32 $month, uint32 $year)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_days_in_year (uint32 $year)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_from_day_of_year (uint32 $doy, uint32 $year)
  returns icaltimetype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_from_string (Str $str)
  returns icaltimetype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_from_timet_with_zone (
  time_t       $tm,
  uint32       $is_date,
  icaltimezone $zone
)
  returns icaltimetype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_get_timezone (icaltimetype $t)
  returns icaltimezone
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_get_tzid (icaltimetype $t)
  returns Str
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_is_date (icaltimetype $t)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_is_leap_year (uint32 $year)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_is_null_time (icaltimetype $t)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_is_utc (icaltimetype $t)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_is_valid_time (icaltimetype $t)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_normalize (icaltimetype $t)
  returns icaltimetype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_null_date ()
  returns icaltimetype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_null_time ()
  returns icaltimetype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_set_timezone (icaltimetype $t, icaltimezone $zone)
  returns icaltimetype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_span_contains (icaltime_span $s, icaltime_span $container)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_span_new (
  icaltimetype $dtstart,
  icaltimetype $dtend,
  uint32       $is_busy
)
  returns icaltime_span
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_span_overlaps (icaltime_span $s1, icaltime_span $s2)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_start_doy_week (icaltimetype $t, uint32 $fdow)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_today ()
  returns icaltimetype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_week_number (icaltimetype $t)
  returns uint32
  is native(icalhelper)
  is export
{ * }

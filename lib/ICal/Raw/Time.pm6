use v6;

use ICal::Raw::Definitions;
use ICal::Raw::Duration;
use ICal::Raw::Enums;

use ICal::Timezone;

augment class icaltimetype {

  method from_day_of_year (uint32 $year) {
    icaltime_from_day_of_year($!d, $year);
  }

  method from_string {
    icaltime_from_string($!d);
  }

  method from_timet_with_zone (uint32 $is_date, icaltimezone $zone) {
    icaltime_from_timet_with_zone($!d, $is_date, $zone);
  }

  method adjust (Int() $days, Int() $hours, Int() $minutes, Int() $seconds) {
    my uint32 ($d, $h, $m, $s) = ($days, $hours, $minutes, $seconds);

    icaltime_adjust($!d, $days, $hours, $minutes, $seconds);
  }

  method as_ical_string {
    icaltime_as_ical_string($!d);
  }

  method as_ical_string_r {
    icaltime_as_ical_string_r($!d);
  }

  method as_timet {
    icaltime_as_timet($!d);
  }

  method as_timet_with_zone (icaltimezone() $zone) {
    icaltime_as_timet_with_zone($!d, $zone);
  }

  method compare (icaltimetype() $b) {
    icaltime_compare($!d, $b);
  }

  method compare_date_only (icaltimetype() $b) {
    icaltime_compare_date_only($!d, $b);
  }

  method compare_date_only_tz (icaltimetype() $b, icaltimezone() $tz) {
    icaltime_compare_date_only_tz($!d, $b, $tz);
  }

  method convert_to_zone (icaltimezone() $zone) {
    icaltime_convert_to_zone($!d, $zone);
  }

  method current_time_with_zone {
    icaltime_current_time_with_zone($!d);
  }

  method day_of_week {
    icaltime_day_of_week($!d);
  }

  method day_of_year {
    icaltime_day_of_year($!d);
  }

  method days_in_month (Int() $year) {
    my uint32 $years = $y;

    icaltime_days_in_month($!d, $year);
  }

  method days_in_year {
    icaltime_days_in_year($!d);
  }

  method get_timezone (:$raw = False) {
    my $tz = icaltime_get_timezone($!d);

    $tz ??
      ( $raw ?? $tz !! ICal::Timezone.new($tz) )
      !!
      Nil;
  }

  method get_tzid {
    icaltime_get_tzid($!d);
  }

  method is_date {
    so icaltime_is_date($!d);
  }

  method is_leap_year {
    so icaltime_is_leap_year($!d);
  }

  method is_null_time {
    so icaltime_is_null_time($!d);
  }

  method is_utc {
    so icaltime_is_utc($!d);
  }

  method is_valid_time {
    so icaltime_is_valid_time($!d);
  }

  method normalize {
    icaltime_normalize($!d);
  }

  method null_date {
    icaltime_null_date($!d);
  }

  method null_time {
    icaltime_null_time($!d);
  }

  method set_timezone (icaltimezone() $zone) {
    icaltime_set_timezone($!d, $zone);
  }

  method span_contains (Int() $container) {
    my icaltime_span $c = $container;

    icaltime_span_contains($!d, $c);
  }

  method span_new (icaltimetype() $dtend, uint32 $is_busy) {
    my uint32 $i.Int.so;

    icaltime_span_new($!d, $dtend, $i);
  }

  method span_overlaps (icaltime_span() $s2) {
    icaltime_span_overlaps($!d, $s2);
  }

  method start_doy_week (uint32 $fdow) {
    my uint32 $f = $fdow;

    icaltime_start_doy_week($!d, $f);
  }

  method today {
    icaltime_today($!d);
  }

  method week_number {
    icaltime_week_number($!d);
  }

  method add (icaldurationtype() $d) {
    icaltime_add(self, $d);
  }

  multi method subtract ($icaltimetype() $t2) {
    icaltimetype.subtract(self, $t2);
  }
  multi method subtract (icaltimetype:U: icaltimetype() $t2) {
    icaltime_subtract(self, $t2);
  }

}

### /usr/include/libical/icaltime.h

sub icaltime_adjust (icaltimetype $tt, uint32 $days, uint32 $hours, uint32 $minutes, uint32 $seconds)
  is native(ical)
  is export
{ * }

sub icaltime_as_ical_string (icaltimetype $tt)
  returns Str
  is native(ical)
  is export
{ * }

sub icaltime_as_ical_string_r (icaltimetype $tt)
  returns Str
  is native(ical)
  is export
{ * }

sub icaltime_as_timet ()
  returns time_t
  is native(ical)
  is export
{ * }

sub icaltime_as_timet_with_zone (icaltimetype $tt, icaltimezone $zone)
  returns time_t
  is native(ical)
  is export
{ * }

sub icaltime_compare (icaltimetype $a, icaltimetype $b)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_compare_date_only (icaltimetype $a, icaltimetype $b)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_compare_date_only_tz (icaltimetype $a, icaltimetype $b, icaltimezone $tz)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_convert_to_zone (icaltimetype $tt, icaltimezone $zone)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icaltime_current_time_with_zone (icaltimezone $zone)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icaltime_day_of_week (icaltimetype $t)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_day_of_year (icaltimetype $t)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_days_in_month (uint32 $month, uint32 $year)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_days_in_year (uint32 $year)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_from_day_of_year (uint32 $doy, uint32 $year)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icaltime_from_string (Str $str)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icaltime_from_timet_with_zone (time_t $tm, uint32 $is_date, icaltimezone $zone)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icaltime_get_timezone (icaltimetype $t)
  returns icaltimezone
  is native(ical)
  is export
{ * }

sub icaltime_get_tzid (icaltimetype $t)
  returns Str
  is native(ical)
  is export
{ * }

sub icaltime_is_date (icaltimetype $t)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_is_leap_year (uint32 $year)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_is_null_time (icaltimetype $t)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_is_utc (icaltimetype $t)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_is_valid_time (icaltimetype $t)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_normalize (icaltimetype $t)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icaltime_null_date ()
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icaltime_null_time ()
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icaltime_set_timezone (icaltimetype $t, icaltimezone $zone)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icaltime_span_contains (icaltime_span $s, icaltime_span $container)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_span_new (icaltimetype $dtstart, icaltimetype $dtend, uint32 $is_busy)
  returns icaltime_span
  is native(ical)
  is export
{ * }

sub icaltime_span_overlaps (icaltime_span $s1, icaltime_span $s2)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_start_doy_week (icaltimetype $t, uint32 $fdow)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaltime_today ()
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icaltime_week_number (icaltimetype $t)
  returns uint32
  is native(ical)
  is export
{ * }

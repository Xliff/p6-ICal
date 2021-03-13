use v6.c;

use ICal::Raw::Types;
use ICal::Raw::Timezone;

use ICal::Array;
use ICal::Component;

class ICal::Timeszone::Array { ... }

class ICal::Timezone {
  has icaltimezone $!it is implementor;

  submethod BUILD (:$timezone) {
    $!it = $timezone;
  }

  multi method new (icaltimezone $timezone) {
    $timezone ?? self.bless( :$timezone ) !! Nil;
  }
  multi method new {
    my $timezone = icaltimezone_new();

    $timezone ?? self.bless( :$timezone ) !! Nil;
  }

  proto method convert_time (|)
  { * }

  multi method convert_time (icaltimezone() $to_zone, icaltimetype $tt) {
    ICal::Timezone.convert_time($tt, $!it, $to_zone);
  }
  multi method convert_time (ICal::Timezone:U:
    icaltimetype   $tt
    icaltimezone() $from_zone,
    icaltimezone() $to_zone
  ) {
    icaltimezone_convert_time($tt, $from_zone, $to_zone);
  }

  method copy {
    icaltimezone_copy($!it);
  }

  method dump_changes (Int() $max_year, Pointer $fp) {
    my int32 $m = $max_year;

    icaltimezone_dump_changes($!it, $max_year, $fp);
  }

  method expand_vtimezone (Int() $end_year, icalarray() $changes) {
    my int32 $e = $end_year;

    icaltimezone_expand_vtimezone($!it, $e, $changes);
  }

  method free (Int() $free_struct) {
    my uint32 = $free_struct.so.Int;

    icaltimezone_free($!it, $free_struct);
  }

  method free_builtin_timezones {
    icaltimezone_free_builtin_timezones($!it);
  }

  method free_zone_directory {
    free_zone_directory($!it);
  }

  method get_builtin_timezone (
    ICal::Timezone:U:
    Str()                  $location,
                           :$raw      = False
  ) {
    my $tz = icaltimezone_get_builtin_timezone($location);

    $tz ??
      ( $raw ?? $tz !! ICal::Timezone.new($tz) )
      !!
      Nil;
  }

  method get_builtin_timezone_from_offset (
    ICal::Timezone:U:
    Int()                  $offset,
    Str()                  $tzname,
                           :$raw      = False
  ) {
    my $tz = icaltimezone_get_builtin_timezone_from_offset($!it, $tzname);

    $tz ??
      ( $raw ?? $tz !! ICal::Timezone.new($tz) )
      !!
      Nil;
  }

  method get_builtin_timezone_from_tzid (
    ICal::Timezone:U:
    Str()                  $tzid,
                           :$raw      = False
  ) {
    my $tz = icaltimezone_get_builtin_timezone_from_tzid($!it);

    $tz ??
      ( $raw ?? $tz !! ICal::Timezone.new($tz) )
      !!
      Nil;
  }

  method get_builtin_timezones (:$icalarray = False, :$raw = False) {
    my $ta = icaltimezone_get_builtin_timezones($!it);

    return $ta if $icalarray && $raw;

    $ta = $ta ??
      ( $raw ?? $ta !! ICal::Array.new($ta) )
      !!
      Nil;

    return $ta unless $icalarray;

    $raw ?? $ta.Array !! $ta.Array.map({ ICal::Timezone.new($_) });
  }

  method get_builtin_tzdata (:$array = False, :$raw = False) {
    returnArray(
      icaltimezone_get_builtin_tzdata($!it),
      $array,
      $raw,
      icaltimezone,
      ICal::Timezone,
      array-object => ICal::Timezone::Array
    )
  }

  method get_component (:$raw = False) {
    my $c = icaltimezone_get_component($!it);

    $c ??
      ( $raw ?? $c !! ICal::Component::Timezone.new($c) )
      !!
      Nil;
  }

  method get_display_name {
    icaltimezone_get_display_name($!it);
  }

  method get_latitude {
    icaltimezone_get_latitude($!it);
  }

  method get_location {
    icaltimezone_get_location($!it);
  }

  method get_location_from_vtimezone {
    icaltimezone_get_location_from_vtimezone($!it);
  }

  method get_longitude {
    icaltimezone_get_longitude($!it);
  }

  method get_tzid {
    icaltimezone_get_tzid($!it);
  }

  method get_tznames {
    icaltimezone_get_tznames($!it);
  }

  method get_tznames_from_vtimezone {
    icaltimezone_get_tznames_from_vtimezone($!it);
  }

  proto method get_utc_offset (|)
  { * }

  multi method get_utc_offset (icaltimetype $tt) {
    samewith($tt, $);
  }
  multi method get_utc_offset (icaltimetype $tt, $is_daylight is rw) {
    my $id = 0;

    my $o = icaltimezone_get_utc_offset($!it, $tt, $id);
    $is_daylight = $id;
    ($o, $id);
  }

  proto method get_utc_offset_of_utc_time (|)
  { * }

  multi method get_utc_offset_of_utc_time (icaltimetype $tt) {
    samewith($tt, $);
  }
  multi method get_utc_offset_of_utc_time (
    icaltimetype $tt,
                 $is_daylight is rw
  ) {
    my $id = 0;

    my $o = icaltimezone_get_utc_offset_of_utc_time($!it, $tt, $id);
    $is_daylight = $id;
    ($o, $id);
  }

  method get_utc_timezone (ICal::Timezone:U: ) {
    my $timezone = icaltimezone_get_utc_timezone($!it);

    ICal::Timezone.new($timezone);
  }

  method release_zone_tab (ICal::Timezone:U: ) {
    icaltimezone_release_zone_tab();
  }

  method set_builtin_tzdata (ICal::Timezone:U: Int() $set) {
    my int32 $s = $set;

    icaltimezone_set_builtin_tzdata($s);
  }

  method set_component (icalcomponent() $comp) {
    icaltimezone_set_component($!it, $comp);
  }

  method set_tzid_prefix {
    icaltimezone_set_tzid_prefix($!it);
  }

  method set_zone_directory {
    set_zone_directory($!it);
  }

  method truncate_vtimezone (
    icaltimetype $start,
    icaltimetype $end,
    Int()        $ms_compatible
  ) {
    my int32 $m = $ms_compatible;

    icaltimezone_truncate_vtimezone($!it, $start, $end, $m);
  }

}

class ICal::Timezone::Array is ICalendar::Array {

  submethod BUILD (:$timezone-array) {
    self.setArray( $timezone-array ) if $timezone-array
  }

  method new ($timezone-array) {
    $timezone-array ?? self.bless( :$timezone-array ) !! Nil;
  }
  method new {
    my $timezone-array = icaltimezone_array_new();

    $timezone-array ?? self.bless( :$timezone-array ) !! Nil;
  }

  method append_from_vtimezone (icalcomponent() $child) {
    icaltimezone_array_append_from_vtimezone($!it, $child);
  }

  method free {
    icaltimezone_array_free($!it);
  }

}

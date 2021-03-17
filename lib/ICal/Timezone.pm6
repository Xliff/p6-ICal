use v6.c;

use Method::Also;
use NativeCall;

use ICal::Raw::Types;
use ICal::Raw::Timezone;

use ICal::Array;
use ICal::Component;

class ICal::Timezone::Array { ... }

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
      is also<convert-time>
  { * }

  multi method convert_time (
    icaltimezone() $to_zone,
                   $tt where {
                     .^can('DateTime') || .^can('icaltimetype')
                   },
                   :$dst     = False
  ) {
    ICal::Timezone.convert_time(
      $to_zone,
      $tt.?DateTime // $tt.icaltimetype,
      :$dst
    );
  }
  multi method convert_time(
    icaltimezone()   $to_zone,
    ICalTimeRakuDate $tt       is copy,
                     :$dst     =  False
  ) {
    $tt = $tt.icaltimetype.new($tt, :$dst) if $tt ~~ DateTime;
    ICal::TimeZone.convert_time(
      $tt,
      $!it,
      $to_zone,
      :$dst;
    );
  }
  multi method convert_time (ICal::Timezone:U:
                   $tt where { .^can('DateTime') || .^can('icaltimetype') },
    icaltimezone() $from_zone,
    icaltimezone() $to_zone,
                   :$dst       = False
  ) {
    samewith(
      $tt.?DateTime // $tt.icaltimetype,
      $from_zone,
      $to_zone
    );
  }
  multi method convert_time (ICal::Timezone:U:
    ICalTimeRakuDate $tt is copy,
    icaltimezone()   $from_zone,
    icaltimezone()   $to_zone,
                     :$dst       = False
  ) {
    $tt = $tt.icaltimetype.new($tt, :$dst) if $tt ~~ DateTime;
    icaltimezone_convert_time($tt, $from_zone, $to_zone);
  }

  method copy {
    icaltimezone_copy($!it);
  }

  method dump_changes (Int() $max_year, Pointer $fp) is also<dump-changes> {
    my int32 $m = $max_year;

    icaltimezone_dump_changes($!it, $max_year, $fp);
  }

  method expand_vtimezone (Int() $end_year, icalarray() $changes)
    is also<expand-vtimezone>
  {
    my int32 $e = $end_year;

    icaltimezone_expand_vtimezone($!it, $e, $changes);
  }

  method free (Int() $free_struct) {
    my uint32 $f = $free_struct.so.Int;

    icaltimezone_free($!it, $f);
  }

  method free_builtin_timezones (ICal::Timezone:U: )
    is also<free-builtin-timezones>
  {
    icaltimezone_free_builtin_timezones();
  }

  method free_zone_directory (ICal::Timezone:U: )
    is also<free-zone-directory>
  {
    free_zone_directory();
  }

  method get_builtin_timezone (
    ICal::Timezone:U:
    Str()                  $location,
                           :$raw      = False
  )
    is also<get-builtin-timezone>
  {
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
  )
    is also<get-builtin-timezone-from-offset>
  {
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
  )
    is also<get-builtin-timezone-from-tzid>
  {
    my $tz = icaltimezone_get_builtin_timezone_from_tzid($tzid);

    $tz ??
      ( $raw ?? $tz !! ICal::Timezone.new($tz) )
      !!
      Nil;
  }

  method get_builtin_timezones (:$array = False, :$raw = False)
    is also<get-builtin-timezones>
  {
    returnArray(
      icaltimezone_get_builtin_timezones(),
      $array,
      $raw,
      icaltimezone,
      ICal::Timezone,
      array-object => ICal::Timezone::Array
    )
  }

  method get_builtin_tzdata (:$array = False, :$raw = False)
    is also<get-builtin-tzdata>
  {
    returnArray(
      icaltimezone_get_builtin_tzdata(),
      $array,
      $raw,
      icaltimezone,
      ICal::Timezone,
      array-object => ICal::Timezone::Array
    )
  }

  method get_component (:$raw = False) is also<get-component> {
    my $c = icaltimezone_get_component($!it);

    $c ??
      ( $raw ?? $c !! ICal::Component::Timezone.new($c) )
      !!
      Nil;
  }

  method get_display_name
    is also<
      get-display-name
      display_name
      display-name
    >
  {
    icaltimezone_get_display_name($!it);
  }

  method get_latitude
    is also<
      get-latitude
      latitude
    >
  {
    icaltimezone_get_latitude($!it);
  }

  method get_location
    is also<
      get-location
      location
    >
  {
    icaltimezone_get_location($!it);
  }

  method get_location_from_vtimezone (
    ICal::Timezone:U:
    icalcomponent()   $component
  )
    is also<get-location-from-vtimezone>
  {
    icaltimezone_get_location_from_vtimezone($component);
  }

  method get_longitude
    is also<
      get-longitude
      longitude
    >
  {
    icaltimezone_get_longitude($!it);
  }

  method get_tzid
    is also<
      get-tzid
      tzid
    >
  {
    icaltimezone_get_tzid($!it);
  }

  method get_tznames
    is also<
      get-tznames
      tznames
    >
  {
    icaltimezone_get_tznames($!it);
  }

  method get_tznames_from_vtimezone (icalcomponent() $component)
    is also<get-tznames-from-vtimezone>
  {
    icaltimezone_get_tznames_from_vtimezone($component);
  }

  proto method get_utc_offset (|)
      is also<get-utc-offset>
  { * }

  # cw: Offering DateTime makes no sense here. Return value would always be 0
  #     with the current implementation. Shall still offer it for consistency's
  #     sake, however.
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
      is also<get-utc-offset-of-utc-time>
  { * }

  multi method get_utc_offset_of_utc_time (
    $tt where { .^can('DateTime') || .^can('icaltimetype') },
    :$dst = False
  ) {
    samewith($tt.?DateTime // $tt.icaltimetype, $, :$dst);
  }
  multi method get_utc_offset_of_utc_time (
    ICalTimeRakuDate $tt,
                     :$dst = False
  ) {
    samewith($tt, $, :$dst);
  }
  multi method get_utc_offset_of_utc_time (
    ICalTimeRakuDate $tt          is copy,
                     $is_daylight is rw,
                     :$dst        =  False
  ) {
    my $id = 0;

    $tt = icaltimetype.new($tt, :$dst) if $tt ~~ DateTime;
    my $o = icaltimezone_get_utc_offset_of_utc_time($!it, $tt, $id);
    $is_daylight = $id;
    ($o, $id);
  }

  method get_utc_timezone (ICal::Timezone:U: ) is also<get-utc-timezone> {
    my $timezone = icaltimezone_get_utc_timezone();

    ICal::Timezone.new($timezone);
  }

  method release_zone_tab (ICal::Timezone:U: ) is also<release-zone-tab> {
    icaltimezone_release_zone_tab();
  }

  method set_builtin_tzdata (ICal::Timezone:U: Int() $set)
    is also<set-builtin-tzdata>
  {
    my int32 $s = $set;

    icaltimezone_set_builtin_tzdata($s);
  }

  method set_component (icalcomponent() $comp) is also<set-component> {
    icaltimezone_set_component($!it, $comp);
  }

  method set_tzid_prefix (
    ICal::Timezone:U:
    Str()             $new-prefix
  )
    is also<set-tzid-prefix>
  {
    icaltimezone_set_tzid_prefix($new-prefix);
  }

  method set_zone_directory (ICal::Timezone:U: Str() $path)
    is also<set-zone-directory>
  {
    set_zone_directory($path);
  }

  proto method truncate_vtimezone (|)
    is also<truncate-vtimezone>
  { * }

  multi method truncate_vtimezone (
    icalcomponent() $component,
                    $start where {
                      .^can('DateTime') || .^can('icaltimetype')
                    },
                    $end where {
                      .^can('DateTime') || .^can('icaltimetype')
                    },
    Int()           $ms_compatible,
                    :$dst           = False
  ) {
    samewith(
      $component,
      $start.?DateTime // $start.icaltimetype,
      $end.?DateTime   // $end.icaltimetype,
      $ms_compatible,
      :$dst
    );
  }
  multi method truncate_vtimezone (
    ICal::Timezone:U:
    icalcomponent()   $component,
    ICalTimeRakuDate  $start         is copy,
    ICalTimeRakuDate  $end           is copy,
    Int()             $ms_compatible,
                      :$dst
  ) {
    my int32 $m = $ms_compatible;

    $start = icaltimetype.new($start, :$dst) if $start ~~ DateTime;
    $end   = icaltimetype.new($end,   :$dst) if $end   ~~ DateTime;
    icaltimezone_truncate_vtimezone($component, $start, $end, $m);
  }

}

class ICal::Timezone::Array is ICal::Array {

  submethod BUILD (:$timezone-array) {
    self.setArray( $timezone-array ) if $timezone-array
  }

  proto method new(|)
  { * }

  multi method new ($timezone-array) {
    $timezone-array ?? self.bless( :$timezone-array ) !! Nil;
  }
  multi method new {
    my $timezone-array = icaltimezone_array_new();

    $timezone-array ?? self.bless( :$timezone-array ) !! Nil;
  }

  method append_from_vtimezone (icalcomponent() $child)
    is also<append-from-vtimezone>
  {
    icaltimezone_array_append_from_vtimezone(self.icalarray, $child);
  }

  method free {
    icaltimezone_array_free(self.icalarray);
  }

}

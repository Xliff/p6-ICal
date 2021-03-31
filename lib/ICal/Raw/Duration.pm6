use v6;

use MONKEY-TYPING;

use Method::Also;

use ICal::Raw::Structs;

use NativeCall;

use ICal::Raw::Definitions;

augment class icaldurationtype {

  method from_int (Int() $dur)
    is also<
      from-int
      new_from_int
      new-from-int
    >
  {
    my uint32 $d = $dur;

    icaldurationtypehelper_from_int($dur);
  }

  method from_string (Str() $str)
    is also<
      from-string
      new_from_string
      new-from-string
    >
  {
    icaldurationtypehelper_from_string($str);
  }

  method bad_duration
    is also<
      bad-duration
      new_bad_duration
      new-bad-duration
    >
  {
    icaldurationtypehelper_bad_duration();
  }

  method null_duration
    is also<
      null-duration
      new_null_duration
      new-null-duration
    >
  {
    icaldurationtypehelper_null_duration();
  }

  method as_ical_string
    is also<
      as-ical-string
      Str
    >
  {
    icaldurationtypehelper_as_ical_string(self);
  }

  method as_ical_string_r is also<as-ical-string-r> {
    icaldurationtypehelper_as_ical_string_r(self);
  }

  method as_int is also<as-int> {
    icaldurationtypehelper_as_int(self);
  }

  method is_bad_duration is also<is-bad-duration> {
    so icaldurationtypehelper_is_bad_duration(self);
  }

  method is_null_duration is also<is-null-duration> {
    so icaldurationtypehelper_is_null_duration(self);
  }

}

### /usr/include/libical/icalduration.h

sub icaldurationtypehelper_as_ical_string (icaldurationtype $d)
  returns Str
  is native(icalhelper)
  is export
{ * }

sub icaldurationtypehelper_as_ical_string_r (icaldurationtype $d)
  returns Str
  is native(icalhelper)
  is export
{ * }

sub icaldurationtypehelper_as_int (icaldurationtype $duration)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaldurationtypehelper_bad_duration ()
  returns icaldurationtype
  is native(icalhelper)
  is export
{ * }

sub icaldurationtypehelper_from_int (uint32 $t)
  returns icaldurationtype
  is native(icalhelper)
  is export
{ * }

sub icaldurationtypehelper_from_string (Str $dur)
  returns icaldurationtype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_add (icaltimetype $t, icaldurationtype $d)
  returns icaltimetype
  is native(icalhelper)
  is export
{ * }

sub icaltimehelper_subtract (icaltimetype $t1, icaltimetype $t2)
  returns icaldurationtype
  is native(icalhelper)
  is export
{ * }

sub icaldurationtypehelper_is_bad_duration (icaldurationtype $d)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaldurationtypehelper_is_null_duration (icaldurationtype $d)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icaldurationtypehelper_null_duration ()
  returns icaldurationtype
  is native(icalhelper)
  is export
{ * }

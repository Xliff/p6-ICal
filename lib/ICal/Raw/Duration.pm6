use v6;

use MONKEY-TYPING;

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

    icaldurationtype_from_int($dur);
  }

  method from_string
    is also<
      from-string
      new_from_string
      new-from-string
    >
  {
    icaldurationtype_from_string(self);
  }

  method as_ical_string is also<Str> {
    icaldurationtype_as_ical_string(self);
  }

  method as_ical_string_r {
    icaldurationtype_as_ical_string_r(self);
  }

  method as_int {
    icaldurationtype_as_int(self);
  }

  method bad_duration {
    icaldurationtype_bad_duration(self);
  }

  method is_bad_duration {
    so icaldurationtype_is_bad_duration(self);
  }

  method is_null_duration {
    so icaldurationtype_is_null_duration(self);
  }

  method null_duration {
    icaldurationtype_null_duration(self);
  }

}

### /usr/include/libical/icalduration.h

sub icaldurationtype_as_ical_string (icaldurationtype $d)
  returns Str
  is native(ical)
  is export
{ * }

sub icaldurationtype_as_ical_string_r (icaldurationtype $d)
  returns Str
  is native(ical)
  is export
{ * }

sub icaldurationtype_as_int (icaldurationtype $duration)
  returns gint
  is native(ical)
  is export
{ * }

sub icaldurationtype_bad_duration ()
  returns icaldurationtype
  is native(ical)
  is export
{ * }

sub icaldurationtype_from_int (gint $t)
  returns icaldurationtype
  is native(ical)
  is export
{ * }

sub icaldurationtype_from_string (Str $dur)
  returns icaldurationtype
  is native(ical)
  is export
{ * }

sub icaltime_add (icaltimetype $t, icaldurationtype $d)
  returns icaltimetype
  is native(ical)
  is export
{ * }

sub icaltime_subtract (icaltimetype $t1, icaltimetype $t2)
  returns icaldurationtype
  is native(ical)
  is export
{ * }

sub icaldurationtype_is_bad_duration (icaldurationtype $d)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaldurationtype_is_null_duration (icaldurationtype $d)
  returns uint32
  is native(ical)
  is export
{ * }

sub icaldurationtype_null_duration ()
  returns icaldurationtype
  is native(ical)
  is export
{ * }

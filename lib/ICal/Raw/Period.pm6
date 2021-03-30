use v6;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Structs;

unit package ICal::Raw::Period;

### /usr/include/libical/icalperiod.h

sub icalperiodtypehelper_as_ical_string (icalperiodtype $p)
  returns Str
  is native(icalhelper)
  is export
{ * }

sub icalperiodtypehelper_as_ical_string_r (icalperiodtype $p)
  returns Str
  is native(icalhelper)
  is export
{ * }

sub icalperiodtypehelper_from_string (Str $str)
  returns icalperiodtype
  is native(icalhelper)
  is export
{ * }

sub icalperiodtypehelper_is_null_period (icalperiodtype $p)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icalperiodtypehelper_is_valid_period (icalperiodtype $p)
  returns uint32
  is native(icalhelper)
  is export
{ * }

sub icalperiodtypehelper_null_period ()
  returns icalperiodtype
  is native(icalhelper)
  is export
{ * }

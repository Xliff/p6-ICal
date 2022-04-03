use v6;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;

unit package ICal::Raw::Error;

### /usr/include/libical/icalerror.h

sub icalerror_clear_errno ()
  is native(ical)
  is export
{ * }

sub icalerror_crash_here ()
  is native(ical)
  is export
{ * }

sub icalerror_error_from_string (Str $str)
  returns icalerrorenum
  is native(ical)
  is export
{ * }

sub icalerror_get_error_state (icalerrorenum $error)
  returns icalerrorstate
  is native(ical)
  is export
{ * }

sub icalerror_get_errors_are_fatal ()
  returns uint32
  is native(ical)
  is export
{ * }

sub ical_bt ()
  is native(ical)
  is export
{ * }

sub icalerrno_return ()
  returns icalerrorenum
  is native(ical)
  is export
{ * }

sub icalerror_perror ()
  returns Str
  is native(ical)
  is export
{ * }

sub icalerror_restore (Str $error, icalerrorstate $es)
  is native(ical)
  is export
{ * }

sub icalerror_set_error_state (icalerrorenum $error, icalerrorstate $state)
  is native(ical)
  is export
{ * }

sub icalerror_set_errors_are_fatal (uint32 $fatal)
  is native(ical)
  is export
{ * }

sub icalerror_stop_here ()
  is native(ical)
  is export
{ * }

sub icalerror_strerror (icalerrorenum $e)
  returns Str
  is native(ical)
  is export
{ * }

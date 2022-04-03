use v6.c;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Structs;

unit package ICal::Raw::Calendar;

### /usr/include/libical/icalcalendar.h

sub icalcalendar_free (icalcalendar $calendar)
  is native(ical)
  is export
{ * }

sub icalcalendar_get_booked (icalcalendar $calendar)
  returns icalset
  is native(ical)
  is export
{ * }

sub icalcalendar_get_freebusy (icalcalendar $calendar)
  returns icalset
  is native(ical)
  is export
{ * }

sub icalcalendar_get_incoming (icalcalendar $calendar)
  returns icalset
  is native(ical)
  is export
{ * }

sub icalcalendar_get_properties (icalcalendar $calendar)
  returns icalset
  is native(ical)
  is export
{ * }

sub icalcalendar_islocked (icalcalendar $calendar)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalcalendar_lock (icalcalendar $calendar)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalcalendar_new (Str $dir)
  returns icalcalendar
  is native(ical)
  is export
{ * }

sub icalcalendar_ownlock (icalcalendar $calendar)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalcalendar_unlock (icalcalendar $calendar)
  returns uint32
  is native(ical)
  is export
{ * }

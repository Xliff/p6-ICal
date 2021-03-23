use v6.c;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;
use ICal::Raw::Structs;

unit package ICal::Raw::Gauge;

### /usr/include/libical/icalgauge.h

sub icalgauge_compare (icalgauge $g, icalcomponent $comp)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalgauge_dump (icalgauge $gauge)
  is native(ical)
  is export
{ * }

sub icalgauge_free (icalgauge $gauge)
  is native(ical)
  is export
{ * }

sub icalgauge_get_expand (icalgauge $gauge)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalgauge_new_from_sql (Str $sql, uint32 $expand)
  returns icalgauge
  is native(ical)
  is export
{ * }

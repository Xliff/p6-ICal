use v6;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;

unit package ICal::Raw::Enum;

### /usr/include/libical/icalenums.h

sub icalenum_num_to_reqstat (short $major, short $minor)
  returns icalrequeststatus
  is native(ical)
  is export
{ * }

sub icalenum_reqstat_code (icalrequeststatus $stat)
  returns Str
  is native(ical)
  is export
{ * }

sub icalenum_reqstat_code_r (icalrequeststatus $stat)
  returns Str
  is native(ical)
  is export
{ * }

sub icalenum_reqstat_desc (icalrequeststatus $stat)
  returns Str
  is native(ical)
  is export
{ * }

sub icalenum_reqstat_major (icalrequeststatus $stat)
  returns short
  is native(ical)
  is export
{ * }

sub icalenum_reqstat_minor (icalrequeststatus $stat)
  returns short
  is native(ical)
  is export
{ * }

use v6.c;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;
use ICal::Raw::Structs;

unit package ICal::Raw::Set;

### /usr/include/libical/icalset.h

sub icalset_add_component (icalset $set, icalcomponent $comp)
  returns icalerrorenum
  is native(ical)
  is export
{ * }

sub icalset_begin_component (
  icalset            $set,
  icalcomponent_kind $kind,
  icalgauge          $gauge,
  Str                $tzid
)
  returns icalsetiter
  is native(ical)
  is export
{ * }

sub icalset_commit (icalset $set)
  returns icalerrorenum
  is native(ical)
  is export
{ * }

sub icalset_count_components (icalset $set, icalcomponent_kind $kind)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalset_fetch (icalset $set, Str $uid)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalset_fetch_match (icalset $set, icalcomponent $c)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalset_free (icalset $set)
  is native(ical)
  is export
{ * }

sub icalset_get_current_component (icalset $set)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalset_get_first_component (icalset $set)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalset_get_next_component (icalset $set)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalset_has_uid (icalset $set, Str $uid)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalsetiter_deref (icalsetiter $i)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalsetiter_next (icalsetiter $i)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalsetiter_prior (icalsetiter $i)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalsetiter_to_next (icalset $set, icalsetiter $i)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalsetiter_to_prior (icalset $set, icalsetiter $i)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalset_mark (icalset $set)
  is native(ical)
  is export
{ * }

sub icalset_modify (icalset $set, icalcomponent $oldc, icalcomponent $newc)
  returns icalerrorenum
  is native(ical)
  is export
{ * }

sub icalset_new (icalset_kind $kind, Str $dsn, Pointer $options)
  returns icalset
  is native(ical)
  is export
{ * }

sub icalset_new_dir (Str $path)
  returns icalset
  is native(ical)
  is export
{ * }

sub icalset_new_file (Str $path)
  returns icalset
  is native(ical)
  is export
{ * }

sub icalset_new_file_reader (Str $path)
  returns icalset
  is native(ical)
  is export
{ * }

sub icalset_new_file_writer (Str $path)
  returns icalset
  is native(ical)
  is export
{ * }

sub icalset_path (icalset $set)
  returns Str
  is native(ical)
  is export
{ * }

sub icalset_remove_component (icalset $set, icalcomponent $comp)
  returns icalerrorenum
  is native(ical)
  is export
{ * }

sub icalset_select (icalset $set, icalgauge $gauge)
  returns icalerrorenum
  is native(ical)
  is export
{ * }

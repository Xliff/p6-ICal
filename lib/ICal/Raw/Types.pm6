use v6;

use ICal::Raw::Exports;

unit package ICal::Raw::Types;

need ICal::Raw::Definitions;
need ICal::Raw::Enums;
need ICal::Raw::Structs;
need ICal::Raw::Subs;
need ICal::Roles::Pointers;

BEGIN {
  ical-re-export($_) for |@ical-exports;
}

use v6.c;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;
use ICal::Raw::Structs;

unit package ICal::Raw::Array;

### /usr/include/libical/icalarray.h

sub icalarray_append (icalarray $array, Pointer $element)
  is native(icalendar)
  is export
{ * }

sub icalarray_copy (icalarray $array)
  returns icalarray
  is native(icalendar)
  is export
{ * }

sub icalarray_element_at (icalarray $array, size_t $position)
  returns Pointer
  is native(icalendar)
  is export
{ * }

sub icalarray_free (icalarray $array)
  is native(icalendar)
  is export
{ * }

sub icalarray_new (size_t $element_size, size_t $increment_size)
  returns icalarray
  is native(icalendar)
  is export
{ * }

sub icalarray_remove_element_at (icalarray $array, size_t $position)
  is native(icalendar)
  is export
{ * }

sub icalarray_sort (
  icalarray $array,
            &compare (Pointer, Pointer --> int32)
)
  is native(icalendar)
  is export
{ * }

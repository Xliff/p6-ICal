use v6;

use NativeCall;

use ICal::Raw::Definitions;

unit package ICal::Raw::Memory;

### /usr/include/libical/icalmemory.h

# cw: libical owns $buf after this call
sub icalmemory_add_tmp_buffer (Pointer $buf)
  is native(ical)
  is export
{ * }

sub icalmemory_append_char (Str $buf, Str $pos, size_t $buf_size, Str $ch)
  is native(ical)
  is export
{ * }

sub icalmemory_append_string (Str $buf, Str $pos, size_t $buf_size, Str $string)
  is native(ical)
  is export
{ * }

sub icalmemory_free_buffer (Pointer $buf)
  is native(ical)
  is export
{ * }

sub icalmemory_free_ring ()
  is native(ical)
  is export
{ * }

sub icalmemory_new_buffer (size_t $size)
  returns Pointer # Caller owns
  is native(ical)
  is export
{ * }

sub icalmemory_resize_buffer (Pointer $buf, size_t $size)
  returns Pointer # Caller owns
  is native(ical)
  is export
{ * }

sub icalmemory_strdup (Str $s)
  returns Str
  is native(ical)
  is export
{ * }

sub icalmemory_tmp_buffer (size_t $size)
  returns Pointer # libical owns
  is native(ical)
  is export
{ * }

sub icalmemory_tmp_copy (Str $str)
  returns str
  is native(ical)
  is export
{ * }

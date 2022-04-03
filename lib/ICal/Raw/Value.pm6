use v6.c;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;
use ICal::Raw::Structs;

unit package ICal::Raw::Value;

### /usr/include/libical/icalvalue.h

sub icalvalue_as_ical_string (icalvalue $value)
  returns Str
  is native(ical)
  is export
{ * }

sub icalvalue_as_ical_string_r (icalvalue $value)
  returns Str
  is native(ical)
  is export
{ * }

sub icalvalue_compare (icalvalue $a, icalvalue $b)
  returns icalparameter_xliccomparetype
  is native(ical)
  is export
{ * }

sub icalvalue_decode_ical_string (
  Str   $szText,
  Str   $szDecText,
  int32 $nMaxBufferLen
)
  returns int32
  is native(ical)
  is export
{ * }

sub icalvalue_encode_ical_string (
  Str   $szText,
  Str   $szEncText,
  int32 $MaxBufferLen
)
  returns int32
  is native(ical)
  is export
{ * }

sub icalvalue_free (icalvalue $value)
  is native(ical)
  is export
{ * }

sub icalvalue_is_valid (icalvalue $value)
  returns int32
  is native(ical)
  is export
{ * }

sub icalvalue_isa (icalvalue $value)
  returns icalvalue_kind
  is native(ical)
  is export
{ * }

sub icalvalue_isa_value ()
  returns int32
  is native(ical)
  is export
{ * }

sub icalvalue_kind_is_valid (icalvalue_kind $kind)
  returns int32
  is native(ical)
  is export
{ * }

sub icalvalue_kind_to_string (icalvalue_kind $kind)
  returns Str
  is native(ical)
  is export
{ * }

sub icalvalue_new (icalvalue_kind $kind)
  returns icalvalue
  is native(ical)
  is export
{ * }

sub icalvalue_new_clone (icalvalue $value)
  returns icalvalue
  is native(ical)
  is export
{ * }

sub icalvalue_new_from_string (icalvalue_kind $kind, Str $str)
  returns icalvalue
  is native(ical)
  is export
{ * }

# LIBRARY PRIVATE ROUTINES -- NEVER TO BE ENABLED!
# sub print_date_to_string (Str $str, icaltimetype $data)
#   is native(ical)
#   is export
# { * }
#
# sub print_datetime_to_string (Str $str, icaltimetype $data)
#   is native(ical)
#   is export
# { * }

sub icalvalue_string_to_kind (Str $str)
  returns icalvalue_kind
  is native(ical)
  is export
{ * }

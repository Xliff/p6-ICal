use v6.c;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;
use ICal::Raw::Structs;

unit package ICal::Raw::Parameter;

### /usr/include/libical/icalparameter.h

sub icalparameter_as_ical_string (icalparameter $parameter)
  returns Str
  is native(ical)
  is export
{ * }

sub icalparameter_as_ical_string_r (icalparameter $parameter)
  returns Str
  is native(ical)
  is export
{ * }

sub icalparameter_free (icalparameter $parameter)
  is native(ical)
  is export
{ * }

sub icalparameter_get_iana_name (icalparameter $param)
  returns Str
  is native(ical)
  is export
{ * }

sub icalparameter_get_iana_value (icalparameter $param)
  returns Str
  is native(ical)
  is export
{ * }

sub icalparameter_get_xname (icalparameter $param)
  returns Str
  is native(ical)
  is export
{ * }

sub icalparameter_get_xvalue (icalparameter $param)
  returns Str
  is native(ical)
  is export
{ * }

sub icalparameter_has_same_name (icalparameter $param1, icalparameter $param2)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalparameter_isa (icalparameter $parameter)
  returns icalparameter_kind
  is native(ical)
  is export
{ * }

sub icalparameter_isa_parameter (Pointer $param)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalparameter_kind_is_valid (icalparameter_kind $kind)
  returns uint32
  is native(ical)
  is export
{ * }

sub icalparameter_kind_to_string (icalparameter_kind $kind)
  returns Str
  is native(ical)
  is export
{ * }

sub icalparameter_new (icalparameter_kind $kind)
  returns icalparameter
  is native(ical)
  is export
{ * }

sub icalparameter_new_clone (icalparameter $p)
  returns icalparameter
  is native(ical)
  is export
{ * }

sub icalparameter_new_from_string (Str $value)
  returns icalparameter
  is native(ical)
  is export
{ * }

sub icalparameter_new_from_value_string (icalparameter_kind $kind, Str $value)
  returns icalparameter
  is native(ical)
  is export
{ * }

sub icalparameter_set_iana_name (icalparameter $param, Str $v)
  is native(ical)
  is export
{ * }

sub icalparameter_set_iana_value (icalparameter $param, Str $v)
  is native(ical)
  is export
{ * }

sub icalparameter_set_xname (icalparameter $param, Str $v)
  is native(ical)
  is export
{ * }

sub icalparameter_set_xvalue (icalparameter $param, Str $v)
  is native(ical)
  is export
{ * }

sub icalparameter_string_to_kind (Str $string)
  returns icalparameter_kind
  is native(ical)
  is export
{ * }

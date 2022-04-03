use v6;

use NativeCall;

use ICal::Raw::Definitions;

unit package ICal::Raw::Attach;

sub icalattach_get_data (icalattach $attach)
  returns CArray[uint8]
  is native(ical)
  is export
{ * }

sub icalattach_get_is_url (icalattach $attach)
  returns int32
  is native(ical)
  is export
{ * }

sub icalattach_get_url (icalattach $attach)
  returns Str
  is native(ical)
  is export
{ * }

sub icalattach_new_from_data (
  CArray[uint8] $data,
  Pointer       $free_fn,                #= Currently not used, so not made callable
  Pointer       $free_fn_data
)
  returns icalattach
  is native(ical)
  is export
{ * }

sub icalattach_new_from_url (Str $url)
  returns icalattach
  is native(ical)
  is export
{ * }

sub icalattach_ref (icalattach $attach)
  is native(ical)
  is export
{ * }

sub icalattach_unref (icalattach $attach)
  is native(ical)
  is export
{ * }

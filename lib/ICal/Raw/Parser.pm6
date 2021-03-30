use v6;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;

unit package ICal::Raw::Parser;

### /usr/include/libical/icalparser.h

sub icalparser_add_line (icalparser $parser, Str $str)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalparser_clean (icalparser $parser)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalparser_free (icalparser $parser)
  is native(ical)
  is export
{ * }

sub icalparser_get_line (
  icalparser $parser,
  &line-gen-func (Str, size_t, Pointer --> str)
)
  returns Str
  is native(ical)
  is export
{ * }

sub icalparser_get_state (icalparser $parser)
  returns icalparser_state
  is native(ical)
  is export
{ * }

sub icalparser_new ()
  returns icalparser
  is native(ical)
  is export
{ * }

sub icalparser_parse (
  icalparser $parser,
             &line-gen-func (Str, size_t, Pointer --> str)
)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalparser_parse_string (Str $str)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalparser_set_gen_data (icalparser $parser, Pointer $data)
  is native(ical)
  is export
{ * }

sub icalparser_string_line_generator (CArray[uint8] $out, size_t $buf_size, Pointer $d)
  returns Str
  is native(ical)
  is export
{ * }

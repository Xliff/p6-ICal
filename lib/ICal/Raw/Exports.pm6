use v6.c;

unit package ICal::Raw::Exports;

use CompUnit::Util :re-export;

our @ical-exports is export;

our %exported;

sub ical-re-export ($compunit) is export {
  return if %exported{$compunit}:exists;

  re-export-everything($compunit);
  %exported{$compunit} = True;
}

BEGIN {
  @ical-exports = <
    ICal::Raw::Definitions
    ICal::Raw::Enums
    ICal::Raw::Structs
    ICal::Raw::Subs
    ICal::Roles::Pointers
  >;
}

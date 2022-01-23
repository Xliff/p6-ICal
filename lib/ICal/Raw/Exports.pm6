use v6.c;

unit package ICal::Raw::Exports;

use CompUnit::Util :re-export;

our @ical-exports is export;

our %exported;

sub ical-re-export ($compunit) is export {
  return if %exported{$compunit}:exists;

  %exported{$compunit} = True;
  re-export-everything($compunit);
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

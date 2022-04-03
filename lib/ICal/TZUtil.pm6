use v6;

use NativeCall;

use ICal::Raw::Types;

use ICal::Roles::StaticClass;

class ICal::TZUtil does ICal::Roles::StaticClass {

  method fetch_timezone (Str() $location) {
    icaltzutil_fetch_timezone($location);
  }

  method get_zone_directory {
    icaltzutil_get_zone_directory();
  }

}

### /usr/include/libical/icaltz-util.h

sub icaltzutil_fetch_timezone (Str $location)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icaltzutil_get_zone_directory ()
  returns Str
  is native(ical)
  is export
{ * }

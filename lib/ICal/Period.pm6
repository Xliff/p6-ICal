use v6;

use MONKEY-TYPING;

use Method::Also;

use ICal::Raw::Types;
use ICal::Raw::Period;

augment class icalperiodtype {

  method null_period
    is also<
      new-null-period
      new_null_period
    >
  {
    icalperiodtypehelper_null_period();
  }

  method from_string (Str() $str)
    is also<
      new-from-string
      new_from_string
    >
  {
    icalperiodtypehelper_from_string($str);
  }

  method as_ical_string
    is also<
      as-ical-string
      Str
    >
  {
    icalperiodtypehelper_as_ical_string(self);
  }

  method as_ical_string_r is also<as-ical-string-r> {
    icalperiodtypehelper_as_ical_string_r(self);
  }

  method is_null_period is also<is-null-period> {
    icalperiodtypehelper_is_null_period(self);
  }

  method is_valid_period is also<is-valid-period> {
    icalperiodtypehelper_is_valid_period(self);
  }

}

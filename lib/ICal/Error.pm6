use v6;

use Method::Also;
use NativeCall;

use ICal::Raw::Types;
use ICal::Raw::Error;

use ICal::Roles::StaticClass;

class ICal::Error does ICal::Roles::StaticClass {

  method clear_errno is also<clear-errno> {
    icalerror_clear_errno();
  }

  # Internally used by C for debugging purposes - May not be of much
  # use
  method crash_here is also<crash-here> {
    icalerror_crash_here();
  }

  method error_from_string (Str() $str) is also<error-from-string> {
    icalerror_error_from_string($str);
  }

  method get_error_state (Int() $error) is also<get-error-state> {
    my icalerrorenum $e = $error;

    icalerror_get_error_state($error);
  }

  method get_errors_are_fatal is also<get-errors-are-fatal> {
    so icalerror_get_errors_are_fatal();
  }

  # Prints ical backtrace
  method bt
    is also<
      backtrace
      ical_bt
      ical-bt
    >
  {
    ical_bt();
  }

  method return
    is also<
      icalerrno_return
      icalerrno-return
    >
  {
    icalerrno_return();
  }

  method perror {
    icalerror_perror();
  }

  method restore (Str() $error, Int() $es) {
    my icalerrorstate $e = $es;

    icalerror_restore($error, $e);
  }

  method set_error_state (Int() $error, Int() $state) is also<set-error-state> {
    my icalerrorenum $e  = $error;
    my icalerrorstate $s = $state;

    icalerror_set_error_state($e, $s);
  }

  method set_errors_are_fatal (Int() $fatal) is also<set-errors-are-fatal> {
    my uint32 $f = $fatal.so.Int;

    icalerror_set_errors_are_fatal($f);
  }

  # Internally used by C for debugging purposes - May not be of much
  # use
  method stop_here is also<stop-here> {
    icalerror_stop_here();
  }

  method strerror (Int() $e) {
    my icalerrorenum $ee = $e;

    icalerror_strerror($e);
  }

}

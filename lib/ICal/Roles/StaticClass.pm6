use v6.c;

use ICal::Raw::Definitions;

role ICal::Roles::StaticClass {

  multi method new (|) {
    self!staticWarning(::?CLASS);
  }

  method !staticWarning (\c) is export {
    warn "{ c.^name } is a static class and does not need to be instantiated!"
      if $ICAL-DEBUG;

    c;
  }

}

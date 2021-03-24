use v6.c;

use ICal::Raw::Types;
use ICal::Raw::Calendar;

class ICal::Calendar {
  has icalcalendar $!ic;

  submethod BUILD (:$calendar) {
    $!ic = $calendar;
  }

  method new (Str() $dir) {
    my $calendar = icalcalendar_new($dir);

    $calendar ?? self.bless( :$calendar ) !! Nil;
  }

  method free {
    icalcalendar_free($!ic);
  }

  method get_booked (:$raw = False) {
    my $s = icalcalendar_get_booked($!ic);

    $s ??
      ( $raw ?? $s !! ICal::Set.new($s) )
      !!
      Nil
  }

  method get_freebusy (:$raw = False) {
    my $s = icalcalendar_get_freebusy($!ic);

    $s ??
      ( $raw ?? $s !! ICal::Set.new($s) )
      !!
      Nil
  }

  method get_incoming (:$raw = False) {
    my $s = icalcalendar_get_incoming($!ic);

    $s ??
      ( $raw ?? $s !! ICal::Set.new($s) )
      !!
      Nil
  }

  method get_properties (:$raw = False) {
    icalcalendar_get_properties($!ic);
  }

  method islocked {
    so icalcalendar_islocked($!ic);
  }

  method lock {
    so icalcalendar_lock($!ic);
  }

  method ownlock {
    so icalcalendar_ownlock($!ic);
  }

  method unlock {
    so icalcalendar_unlock($!ic);
  }

}

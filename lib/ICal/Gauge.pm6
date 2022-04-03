use v6.c;

use ICal::Raw::Types;
use ICal::Raw::Gauge;

class ICal::Gauge {
  has icalgauge $!ig is implementor;

  submethod BUILD (:$gauge) {
    $!ig = $gauge;
  }

  method ICal::Raw::Definitions::icalgauge
  { $!ig }

  method new (icalgauge $gauge) {
    $gauge ?? self.bless( :$gauge ) !! Nil;
  }

  method new_from_sql (Str $sql, Int() $expand) {
    my uint32 $e     = $expand.so.Int;
    my        $gauge = icalgauge_new_from_sql($sql, $e);

    $gauge ?? self.bless( :$gauge ) !! Nil;
  }

  method compare (icalcomponent() $comp) {
    so icalgauge_compare($!ig, $comp);
  }

  method dump {
    icalgauge_dump($!ig);
  }

  method free {
    icalgauge_free($!ig);
  }

  method get_expand {
    so icalgauge_get_expand($!ig);
  }

}

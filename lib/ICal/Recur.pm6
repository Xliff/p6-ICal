use v6;

use NativeCall;

use MONKEY-TYPING;

use ICal::Raw::Types;
use ICal::Raw::Recur;

use ICal::Roles::StaticClass;

augment class icalrecurrencetype {

  method as_string {
    icalrecurrencetype_as_string(self);
  }

  method as_string_r {
    icalrecurrencetype_as_string_r(self);
  }

  method clear {
    icalrecurrencetype_clear(self);
  }

  method day_day_of_week (Int() $day) {
    my short $d = $day;

    icalrecurrencetype_day_day_of_week($d);
  }

  method day_position (Int() $day) {
    my short $d = $day;

    icalrecurrencetype_day_position($d);
  }

  method from_string (Str() $str) {
    icalrecurrencetype_from_string($str);
  }

  method month_is_leap (Int() $m) {
    my short $m = $month;

    icalrecurrencetype_month_is_leap($m);
  }

  method month_month (Int() $m) {
    my short $m = $month;

    icalrecurrencetype_month_month($month);
  }

  method rscale_is_supported (icalrecurrencetype:U: ) {
    so icalrecurrencetype_rscale_is_supported();
  }

  method rscale_supported_calendars (icalrecurrencetype:U: :$raw = False) {
    icalrecurrencetype_rscale_supported_calendars();
  }

}

class ICal::Recur does ICal::Roles::StaticClass {

  proto method expand_recurrence (|)
  { * }

  multi method expand_recurrence (
    Str() $rule,
    Int() $start,
    Int() $count,
          :$raw   = False
  ) {
    my $rv = samewith($rule, $start, $count, $, :all, :$raw);

    $rv[0] ?? $rv[1] !! Nil;
  }
  multi method expand_recurrence (
    Str() $rule,
    Int() $start,
    Int() $count,
          $array is rw,
          :$all  =  False,
          :$raw  =  False
  ) {
    my uint32         $c = $count;
    my time_t         $s = $start;
    my CArray[time_t] $t = CArray[time_t].new;

    # Preallocate.
    $t[$_] = 0 for ^$c;

    my $rv    = icalrecur_expand_recurrence($rule, $start, $c, $t);
       $array = $raw ?? $t.Array !! $t;

    $all.not ?? $rv !! ($rv, $t);
  }

  method freq_to_string (Int() $kind) {
    my icalrecurrencetype_frequency $k = $kind;

    icalrecur_freq_to_string($k);
  }

  method skip_to_string (Int() $kind) {
    my icalrecurrencetype_skip $k = $kind;

    icalrecur_skip_to_string($k);
  }

  method string_to_freq (Str() $str) {
    icalrecur_string_to_freq($str);
  }

  method string_to_skip (Str() $str) {
    icalrecur_string_to_skip($str);
  }

  method string_to_weekday (Str() $str) {
    icalrecur_string_to_weekday($str);
  }

  method weekday_to_string (Int() $kind) {
    my icalrecurrencetype_weekday $k = $kind;

    icalrecur_weekday_to_string($k);
  }

}

class ICal::Recur::Iter {
  my icalrecur_iterator $!iri;

  submethod BUILD (:$iter) {
    $!iri = $iter;
  }

  method new (icalrecurrencetype() $rule, icaltimetype() $dtstart) {
    my $iter = icalrecur_iterator_new($rule, $dtstart);

    $iter ?? self.bless( :$iter ) !! Nil;
  }

  method free {
    icalrecur_iterator_free();
  }

  method next {
    icalrecur_iterator_next();
  }

  method set_start (icaltimetype() $start) {
    icalrecur_iterator_set_start($!iri, $start);
  }

}

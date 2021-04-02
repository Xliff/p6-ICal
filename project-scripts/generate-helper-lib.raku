use v6;

sub MAIN (
  :$prop-file  = '/usr/include/libical/icalderivedproperty.h',
  :$value-file = '/usr/include/libical/icalderivedvalue.h',
  :$build      = False
) {
  unless $build {
    qqx{install -d c-helper};
    my rule time-subs {
      'icalproperty' '*icalproperty_new_'(\w+)'(struct icaltimetype v);'
    }
    my rule struct-subs {
      'icalvalue' '*icalvalue_new_'(\w+)'(struct' (\w+) 'v);'
    }

    my $defs = $prop-file.IO.slurp;
    my $found = $defs ~~ m:g/<time-subs>/;
    my @subs;
    for $found[] {
      my $name = .<time-subs>[0];
      @subs.push: qq:to/SUBDEF/;
        icalproperty *icalpropertyhelper_new_{ $name }(struct icaltimetype *v) \{
          return icalproperty_new_{ $name }(*v);
        \}
        SUBDEF
    }

    $defs = $value-file.IO.slurp;
    $found = $defs ~~ m:g/<struct-subs>/;
    for $found[] {
      #.gist.say;
      my $name = .<struct-subs>[0];
      @subs.push: qq:to/SUBDEF/;
        icalvalue *icalvaluehelper_new_{ $name }(struct { .<struct-subs>[1] } *v) \{
          return icalvalue_new_{ $name }(*v);
        \}
        SUBDEF
    }

    # Period
    @subs.push: q:to/PERIOD/;
      struct icalperiodtype *icalperiodtypehelper_from_string(const char *str) {
        struct icalperiodtype r = icalperiodtype_from_string(str);
        size_t len = sizeof(r);
        struct icalperiodtype *ret = (struct icalperiodtype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      const char *icalperiodtypehelper_as_ical_string(struct icalperiodtype *p) {
        return icalperiodtype_as_ical_string(*p);
      }

      char *icalperiodtypehelper_as_ical_string_r(struct icalperiodtype *p) {
        return icalperiodtype_as_ical_string_r(*p);
      }

      struct icalperiodtype *icalperiodtypehelper_null_period(void) {
        struct icalperiodtype r = icalperiodtype_null_period();
        size_t len = sizeof(r);
        struct icalperiodtype *ret = (struct icalperiodtype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      int icalperiodtypehelper_is_null_period(struct icalperiodtype *p) {
        return icalperiodtype_is_null_period(*p);
      }

      int icalperiodtypehelper_is_valid_period(struct icalperiodtype *p) {
        return icalperiodtype_is_valid_period(*p);
      }
      PERIOD

    # Time
    @subs.push: q:to/TIME/;
      struct icaltimetype *icaltimehelper_null_time(void) {
        struct icaltimetype r = icaltime_null_time();
        size_t len = sizeof(r);
        struct icaltimetype *ret = (struct icaltimetype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      struct icaltimetype *icaltimehelper_null_date(void) {
        struct icaltimetype r = icaltime_null_date();
        size_t len = sizeof(r);
        struct icaltimetype *ret = (struct icaltimetype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      struct icaltimetype *icaltimehelper_current_time_with_zone(const icaltimezone *zone) {
        struct icaltimetype r = icaltime_current_time_with_zone(zone);
        size_t len = sizeof(r);
        struct icaltimetype *ret = (struct icaltimetype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      struct icaltimetype *icaltimehelper_today(void) {
        struct icaltimetype r = icaltime_today();
        size_t len = sizeof(r);
        struct icaltimetype *ret = (struct icaltimetype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      struct icaltimetype *icaltimehelper_from_timet_with_zone(
        const time_t tm,
        const int is_date,
        const icaltimezone *zone
      ) {
        struct icaltimetype r = icaltime_from_timet_with_zone(
          tm,
          is_date,
          zone
        );
        size_t len = sizeof(r);
        struct icaltimetype *ret = (struct icaltimetype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      struct icaltimetype *icaltimehelper_from_string(const char *str) {
        struct icaltimetype r = icaltime_from_string(str);
        size_t len = sizeof(r);
        struct icaltimetype *ret = (struct icaltimetype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      struct icaltimetype *icaltimehelper_from_day_of_year(
        const int doy,
        const int year
      ) {
        struct icaltimetype r = icaltime_from_day_of_year(doy, year);
        size_t len = sizeof(r);
        struct icaltimetype *ret = (struct icaltimetype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      time_t icaltimehelper_as_timet(struct icaltimetype *t) {
        return icaltime_as_timet(*t);
      }

      time_t icaltimehelper_as_timet_with_zone(
        const struct icaltimetype *tt,
        const icaltimezone *zone
      ) {
        return icaltime_as_timet_with_zone(*tt, zone);
      }

      const char *icaltimehelper_as_ical_string(const struct icaltimetype *tt) {
        return icaltime_as_ical_string(*tt);
      }

      const icaltimezone *icaltimehelper_get_timezone(
        const struct icaltimetype *t
      ) {
        return icaltime_get_timezone(*t);
      }

      const char *icaltimehelper_get_tzid(const struct icaltimetype *t) {
        return icaltime_get_tzid(*t);
      }

      struct icaltimetype *icaltimehelper_set_timezone(
        struct icaltimetype *t,
        const icaltimezone *zone
      ) {
        struct icaltimetype r = icaltime_set_timezone(t, zone);
        size_t len = sizeof(r);
        struct icaltimetype *ret = (struct icaltimetype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      int icaltimehelper_day_of_year(const struct icaltimetype *t) {
        return icaltime_day_of_year(*t);
      }

      int icaltimehelper_day_of_week(const struct icaltimetype *t) {
        return icaltime_day_of_week(*t);

      }

      int icaltimehelper_start_doy_week(
        const struct icaltimetype *t,
        int fdow
      ) {
        return icaltime_start_doy_week(*t, fdow);
      }

      int icaltimehelper_week_number(const struct icaltimetype *t) {
        return icaltime_week_number(*t);
      }

      int icaltimehelper_is_valid_time(const struct icaltimetype *t) {
        return icaltime_is_valid_time(*t);
      }

      int icaltimehelper_is_date(const struct icaltimetype *t) {
        return icaltime_is_date(*t);
      }

      int icaltimehelper_is_utc(const struct icaltimetype *t) {
        return icaltime_is_utc(*t);
      }

      int icaltimehelper_compare(
        const struct icaltimetype *a,
        const struct icaltimetype *b
      ) {
        return icaltime_compare(*a, *b);
      }

      int icaltimehelper_compare_date_only(
        const struct icaltimetype *a,
        const struct icaltimetype *b
      ) {
        return icaltime_compare_date_only(*a, *b);
      }

      int icaltimehelper_compare_date_only_tz(
        const struct icaltimetype *a,
        const struct icaltimetype *b,
        icaltimezone *tz
      ) {
        return icaltime_compare_date_only_tz(*a, *b, tz);
      }

      struct icaltimetype *icaltimehelper_normalize(
        const struct icaltimetype *t
      ) {
        struct icaltimetype r = icaltime_normalize(*t);
        size_t len = sizeof(r);
        struct icaltimetype *ret = (struct icaltimetype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      struct icaltimetype *icaltimehelper_convert_to_zone(
        const struct icaltimetype *tt,
        icaltimezone *zone
      ) {
        struct icaltimetype r = icaltime_convert_to_zone(*tt, zone);
        size_t len = sizeof(r);
        struct icaltimetype *ret = (struct icaltimetype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      struct icaltime_span *icaltimehelper_span_new(
        struct icaltimetype *dtstart,
        struct icaltimetype *dtend,
        int is_busy
      ) {
        struct icaltime_span r = icaltime_span_new(*dtstart, *dtend, is_busy);
        size_t len = sizeof(r);
        struct icaltime_span *ret = (struct icaltime_span *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }
      TIME

    @subs.push: q:to/DURATION/;
      struct icaldurationtype *icaldurationtypehelper_from_int(int t) {
        struct icaldurationtype r = icaldurationtype_from_int(t);
        size_t len = sizeof(r);
        struct icaldurationtype *ret = (struct icaldurationtype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      struct icaldurationtype *icaldurationtypehelper_from_string(
        const char *dur
      ) {
        struct icaldurationtype r = icaldurationtype_from_string(dur);
        size_t len = sizeof(r);
        struct icaldurationtype *ret = (struct icaldurationtype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      int icaldurationtype_as_int(struct icaldurationtype duration) {
        return icaldurationtype_as_int(duration);
      }

      char *icaldurationtypehelper_as_ical_string(struct icaldurationtype *d) {
        return icaldurationtype_as_ical_string(*d);
      }

      char *icaldurationtypehelper_as_ical_string_r(struct icaldurationtype *d) {
        return icaldurationtype_as_ical_string_r(*d);
      }

      struct icaldurationtype *icaldurationtypehelper_null_duration(void) {
        struct icaldurationtype r = icaldurationtype_null_duration();
        size_t len = sizeof(r);
        struct icaldurationtype *ret = (struct icaldurationtype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      struct icaldurationtype *icaldurationtypehelper_bad_duration(void) {
        struct icaldurationtype r = icaldurationtype_bad_duration();
        size_t len = sizeof(r);
        struct icaldurationtype *ret = (struct icaldurationtype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      int icaldurationtypehelper_is_null_duration(struct icaldurationtype *d) {
        return icaldurationtype_is_null_duration(*d);
      }

      struct icaltimetype *icaltimehelper_add(
        struct icaltimetype *t,
        struct icaldurationtype *d
      ) {
        struct icaltimetype r = icaltime_add(*t, *d);
        size_t len = sizeof(r);
        struct icaltimetype *ret = (struct icaltimetype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }

      struct icaldurationtype *icaltimehelper_subtract(
        struct icaltimetype *t1,
        struct icaltimetype *t2
      ) {
        struct icaldurationtype r = icaltime_subtract(*t1, *t2);
        size_t len = sizeof(r);
        struct icaldurationtype *ret = (struct icaldurationtype *)malloc(len);
        memcpy(ret, &r, len);

        return ret;
      }
      DURATION

    "c-helper/icalhelper.c".IO.spurt: qq:to/OUT/;
      #include <stdio.h>
      #include <stdlib.h>
      #include <string.h>
      #include "libical/ical.h"
      #include "libical/icalderivedproperty.h"
      #include "libical/icalderivedvalue.h"
      #include "libical/icalperiod.h"
      #include "libical/icaltime.h"
      #include "libical/icalduration.h"

      { @subs.join("\n") }
      OUT
  }

  # Now build the damned thing. (Currently Debian-based Linux only)
  my $libs = qqx{pkg-config --libs libical};

  qqx{gcc c-helper/icalhelper.c -g -Wno-return-local-addr -fPIC -shared -o c-helper/icalhelper.so $libs};
   qx{cp c-helper/icalhelper.so resources/lib};
}

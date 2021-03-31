#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "libical/ical.h"
#include "libical/icalderivedproperty.h"
#include "libical/icalderivedvalue.h"
#include "libical/icalperiod.h"
#include "libical/icaltime.h"
#include "libical/icalduration.h"

icalproperty *icalpropertyhelper_new_acknowledged(struct icaltimetype *v) {
  return icalproperty_new_acknowledged(*v);
}

icalproperty *icalpropertyhelper_new_completed(struct icaltimetype *v) {
  return icalproperty_new_completed(*v);
}

icalproperty *icalpropertyhelper_new_created(struct icaltimetype *v) {
  return icalproperty_new_created(*v);
}

icalproperty *icalpropertyhelper_new_datemax(struct icaltimetype *v) {
  return icalproperty_new_datemax(*v);
}

icalproperty *icalpropertyhelper_new_datemin(struct icaltimetype *v) {
  return icalproperty_new_datemin(*v);
}

icalproperty *icalpropertyhelper_new_dtend(struct icaltimetype *v) {
  return icalproperty_new_dtend(*v);
}

icalproperty *icalpropertyhelper_new_dtstamp(struct icaltimetype *v) {
  return icalproperty_new_dtstamp(*v);
}

icalproperty *icalpropertyhelper_new_dtstart(struct icaltimetype *v) {
  return icalproperty_new_dtstart(*v);
}

icalproperty *icalpropertyhelper_new_due(struct icaltimetype *v) {
  return icalproperty_new_due(*v);
}

icalproperty *icalpropertyhelper_new_exdate(struct icaltimetype *v) {
  return icalproperty_new_exdate(*v);
}

icalproperty *icalpropertyhelper_new_lastmodified(struct icaltimetype *v) {
  return icalproperty_new_lastmodified(*v);
}

icalproperty *icalpropertyhelper_new_maxdate(struct icaltimetype *v) {
  return icalproperty_new_maxdate(*v);
}

icalproperty *icalpropertyhelper_new_mindate(struct icaltimetype *v) {
  return icalproperty_new_mindate(*v);
}

icalproperty *icalpropertyhelper_new_recurrenceid(struct icaltimetype *v) {
  return icalproperty_new_recurrenceid(*v);
}

icalproperty *icalpropertyhelper_new_tzuntil(struct icaltimetype *v) {
  return icalproperty_new_tzuntil(*v);
}

icalvalue *icalvaluehelper_new_recur(struct icalrecurrencetype *v) {
  return icalvalue_new_recur(*v);
}

icalvalue *icalvaluehelper_new_trigger(struct icaltriggertype *v) {
  return icalvalue_new_trigger(*v);
}

icalvalue *icalvaluehelper_new_date(struct icaltimetype *v) {
  return icalvalue_new_date(*v);
}

icalvalue *icalvaluehelper_new_datetime(struct icaltimetype *v) {
  return icalvalue_new_datetime(*v);
}

icalvalue *icalvaluehelper_new_datetimedate(struct icaltimetype *v) {
  return icalvalue_new_datetimedate(*v);
}

icalvalue *icalvaluehelper_new_datetimeperiod(struct icaldatetimeperiodtype *v) {
  return icalvalue_new_datetimeperiod(*v);
}

icalvalue *icalvaluehelper_new_geo(struct icalgeotype *v) {
  return icalvalue_new_geo(*v);
}

icalvalue *icalvaluehelper_new_duration(struct icaldurationtype *v) {
  return icalvalue_new_duration(*v);
}

icalvalue *icalvaluehelper_new_period(struct icalperiodtype *v) {
  return icalvalue_new_period(*v);
}

icalvalue *icalvaluehelper_new_requeststatus(struct icalreqstattype *v) {
  return icalvalue_new_requeststatus(*v);
}

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


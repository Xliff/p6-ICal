#include <stdio.h>
#include "libical/ical.h"
#include "libical/icalderivedproperty.h"
#include "libical/icalderivedvalue.h"

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


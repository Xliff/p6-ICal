#include <stdio.h>
#include "libical/ical.h"
#include "libical/icalderivedproperty.h"

icalproperty *icalpropertyhelper_new_acknowledged(struct icaltimetype *v) {
  return icalproperty_new_acknowledged(*v);
}

icalproperty *icalpropertyhelper_new_completed(struct icaltimetype *v) {
  printf("Hour: %d/Min: %d/Sec: %d", v->hour, v->minute, v->second);
  return icalproperty_new_completed(*v);
}

icalproperty *icalpropertyhelper_new_created(struct icaltimetype *v) {
  printf("Hour: %d/Min: %d/Sec: %d\n", v->hour, v->minute, v->second);
  printf("Day: %d/Month: %d/Year: %d\n", v->day, v->month, v->year);
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

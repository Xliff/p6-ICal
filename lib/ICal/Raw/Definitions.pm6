use v6.c;

use NativeCall;

use ICal::Roles::Pointers;

unit package ICal::Raw::Definitions;

constant icalendar is export = 'ical',v3;

constant realUInt is export = $*KERNEL.bits == 32 ?? uint32 !! uint64;
constant realInt  is export = $*KERNEL.bits == 32 ?? int32  !! int64;

constant char                    is export := Str;
constant double                  is export := num64;
constant time_t                  is export := uint64;

constant ICAL_BY_SECOND_SIZE     is export = 62;                                 #= 0 to 60
constant ICAL_BY_MINUTE_SIZE     is export = 61;                                 #= 0 to 59
constant ICAL_BY_HOUR_SIZE       is export = 25;                                 #= 0 to 23
constant ICAL_BY_MONTH_SIZE      is export = 14;                                 #= 1 to 13
constant ICAL_BY_MONTHDAY_SIZE   is export = 32;                                 #= 1 to 31
constant ICAL_BY_WEEKNO_SIZE     is export = 56;                                 #= 1 to 55
constant ICAL_BY_YEARDAY_SIZE    is export = 386;                                #= 1 to 385
constant ICAL_BY_SETPOS_SIZE     is export = ICAL_BY_YEARDAY_SIZE;
constant ICAL_BY_DAY_SIZE        is export = 7 * (ICAL_BY_WEEKNO_SIZE - 1) + 1;

constant ICALPROPERTY_FIRST_ENUM is export = 10000;
constant ICALPROPERTY_LAST_ENUM  is export = 11300;

# See Enums.pm6 for confirmation
constant ICALPARAMETER_LAST_ENUM is export = 22300;

class VObject            is repr<CPointer> does ICal::Roles::Pointers is export { }
class icalattach         is repr<CPointer> does ICal::Roles::Pointers is export { }
class icalcluster        is repr<CPointer> does ICal::Roles::Pointers is export { }
#class icalgauge          is repr<CPointer> does ICal::Roles::Pointers is export { }
class pvl_list           is repr<CPointer> does ICal::Roles::Pointers is export { }
class icalrecur_iterator is repr<CPointer> does ICal::Roles::Pointers is export { }
class icaltimezone       is repr<CPointer> does ICal::Roles::Pointers is export { }
class icalcomponent      is repr<CPointer> does ICal::Roles::Pointers is export { }
class icalproperty       is repr<CPointer> does ICal::Roles::Pointers is export { }
class icalparameter      is repr<CPointer> does ICal::Roles::Pointers is export { }
class icalvalue          is repr<CPointer> does ICal::Roles::Pointers is export { }

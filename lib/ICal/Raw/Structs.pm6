use v6.c;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;

unit package ICal::Raw::Structs;

# Predeclarations

class pvl_elem_t          is repr<CStruct> is export { ... }
class icaltimetype        is repr<CStruct> is export { ... }
class icalperiodtype      is repr<CStruct> is export { ... }
class icalset_impl        is repr<CStruct> is export { ... }
class icaldirset_options  is repr<CStruct> is export { ... }
class icalfileset_options is repr<CStruct> is export { ... }

constant pvl_elem is export := pvl_elem_t;
constant icalset  is export := icalset_impl;

class VObjectIterator is repr<CStruct> is export {
	has VObject $.start is rw;
	has VObject $.next  is rw;
}

class _icalarray is repr<CStruct> is export {
	has size_t          $.element_size    is rw;
	has size_t          $.increment_size  is rw;
	has size_t          $.num_elements    is rw;
	has size_t          $.space_allocated is rw;
	has CArray[Pointer] $.chunks;
}
constant icalarray is export := _icalarray;

class _icalvcal_defaults is repr<CStruct> is export {
	has char $.alarm_audio_url     is rw;
	has char $.alarm_audio_fmttype is rw;
	has char $.alarm_description   is rw;
}

class icalcompiter is repr<CStruct> is export {
	has icalcomponent_kind $.kind is rw;
	has pvl_elem           $.iter is rw;
}

class icaldatetimeperiodtype is repr<CStruct> is export {
	has icaltimetype   $.time   is rw;
	has icalperiodtype $.period is rw;
}

class icaldirset_impl is repr<CStruct> is export {
	has icalset            $.super              is rw;
	has char               $.dir                is rw;
	has icaldirset_options $.options            is rw;
	has icalcluster        $.cluster            is rw;
	has icalgauge          $.gauge              is rw;
	has int                $.first_component    is rw;
	has pvl_list           $.directory          is rw;
	has pvl_elem           $.directory_iterator is rw;
}

class icaldirset_options {
	has int $.flags is rw;
}

class icaldurationtype is repr<CStruct> is export {
	has int $.is_neg  is rw;
	has int $.days    is rw;
	has int $.weeks   is rw;
	has int $.hours   is rw;
	has int $.minutes is rw;
	has int $.seconds is rw;
}

class icalfileset_impl is repr<CStruct> is export {
	has icalset             $.super   is rw;
	has char                $.path    is rw;
	has icalfileset_options $.options is rw;
	has icalcomponent       $.cluster is rw;
	has icalgauge           $.gauge   is rw;
	has int                 $.changed is rw;
	has int                 $.fd      is rw;
}

class icalfileset_options {
	has int         $.flags      is rw;
	has int         $.mode       is rw;
	has int         $.safe_saves is rw;
	has icalcluster $.cluster    is rw;
}

class icalgauge_impl is repr<CStruct> is export {
	has pvl_list $.select is rw;
	has pvl_list $.from   is rw;
	has pvl_list $.where  is rw;
	has int      $.expand is rw;
}
constant icalgauge is export := icalgauge_impl;

class icalgauge_where is repr<CStruct> is export {
	has icalgaugelogic     $.logic   is rw;
	has icalcomponent_kind $.comp    is rw;
	has icalproperty_kind  $.prop    is rw;
	has icalgaugecompare   $.compare is rw;
	has char               $.value   is rw;
}

class icalgeotype is repr<CStruct> is export {
	has double $.lat is rw;
	has double $.lon is rw;
}

class icalperiodtype {
	has icaltimetype     $.start    is rw;
	has icaltimetype     $.end      is rw;
	has icaldurationtype $.duration is rw;
}

class icalreqstattype is repr<CStruct> is export {
	has icalrequeststatus $.code  is rw;
	has char              $.desc  is rw;
	has char              $.debug is rw;
}

class icalset_impl {
    has icalset_kind $.kind is rw;
    has size_t       $.size is rw;
    has char         $!dsn;
    has Pointer      $!init; 									  #= icalset *(*init) (icalset *set, const char *dsn, void *options);
    has Pointer      $!free; 									  #= void (*free) (icalset *set);
    has Pointer      $!path; 									  #= const char *(*path) (icalset *set);
    has Pointer      $!mark; 									  #= void (*mark) (icalset *set);
    has Pointer      $!commit; 								  #= icalerrorenum(*commit) (icalset *set);
    has Pointer      $!add_component;    			  #= icalerrorenum(*add_component) (icalset *set, icalcomponent *comp);
    has Pointer      $!remove_component; 			  #= icalerrorenum(*remove_component) (icalset *set, icalcomponent *comp);
    has Pointer      $!count_components; 			  #= int (*count_components) (icalset *set, icalcomponent_kind kind);
    has Pointer      $!select;                  #= icalerrorenum(*select) (icalset *set, icalgauge *gauge);
    has Pointer      $!clear;                   #= void (*clear) (icalset *set);
    has Pointer      $!fetch;                   #= icalcomponent *(*fetch) (icalset *set, icalcomponent_kind kind, const char *uid);
    has Pointer      $!fetch_match;             #= icalcomponent *(*fetch_match) (icalset *set, icalcomponent *comp);
    has Pointer      $!has_uid;                 #= int (*has_uid) (icalset *set, const char *uid);
    has Pointer      $!modify;                  #= icalerrorenum(*modify) (icalset *set, icalcomponent *old, icalcomponent *newc);
    has Pointer      $!get_current_component;   #= icalcomponent *(*get_current_component) (icalset *set);
    has Pointer      $!get_first_component;     #= icalcomponent *(*get_first_component) (icalset *set);
    has Pointer      $!get_next_component;      #= icalcomponent *(*get_next_component) (icalset *set);
    has Pointer      $!icalset_begin_component; #= icalsetiter(*icalset_begin_component) (icalset *set, icalcomponent_kind kind, icalgauge *gauge, const char *tzid);
    has Pointer      $!icalsetiter_to_next;     #= icalcomponent *(*icalsetiter_to_next) (icalset *set, icalsetiter *i);
    has Pointer      $!icalsetiter_to_prior;    #= icalcomponent *(*icalsetiter_to_prior) (icalset *set, icalsetiter *i);
}

class icalsetiter is repr<CStruct> is export {
	has icalcompiter       $.iter           is rw;
	has icalgauge          $.gauge          is rw;
	has icalrecur_iterator $.ritr           is rw;
	has icalcomponent      $.last_component is rw;
	has char               $.tzid           is rw;
}

class icaltime_span is repr<CStruct> is export {
	has time_t $.start   is rw;
	has time_t $.end     is rw;
	has int    $.is_busy is rw;
}

class icaltimetype {
	has int          $.year        is rw;
	has int          $.month       is rw;
	has int          $.day         is rw;
	has int          $.hour        is rw;
	has int          $.minute      is rw;
	has int          $.second      is rw;
	has int          $.is_date     is rw;
	has int          $.is_daylight is rw;
	has icaltimezone $.zone        is rw;
}

class icaltimezonephase is repr<CStruct> is export {
	has char                   $.tzname       is rw;
	has int                    $.is_stdandard is rw;
	has icaltimetype           $.dtstart      is rw;
	has int                    $.offsetto     is rw;
	has int                    $.tzoffsetfrom is rw;
	has char                   $.comment      is rw;
	has icaldatetimeperiodtype $.rdate        is rw;
	has char                   $.rrule        is rw;
}

class icaltimezonetype is repr<CStruct> is export {
	has char              $.tzid     is rw;
	has icaltimetype      $.last_mod is rw;
	has char              $.tzurl    is rw;
	has icaltimezonephase $.phases   is rw;
}

class icaltriggertype is repr<CStruct> is export {
	has icaltimetype     $.time     is rw;
	has icaldurationtype $.duration is rw;
}

class pvl_elem_t {
	has int        $.MAGIC is rw;
	has Pointer    $.d     is rw;
	has pvl_elem_t $.next  is rw;
	has pvl_elem_t $.prior is rw;
}

class sspm_header is repr<CStruct> is export {
	has int             $.def                 is rw;
	has char            $.boundary            is rw;
	has sspm_major_type $.major               is rw;
	has sspm_minor_type $.minor               is rw;
	has char            $.minor_text          is rw;
	has char            $.content_type_params is rw;
	has char            $.charset             is rw;
	has sspm_encoding   $.encoding            is rw;
	has char            $.filename            is rw;
	has char            $.content_id          is rw;
	has sspm_error      $.error               is rw;
	has char            $.error_text          is rw;
}

class sspm_part is repr<CStruct> is export {
	has sspm_header $.header    is rw;
	has int         $.level     is rw;
	has size_t      $.data_size is rw;
	has Pointer        $.data      is rw;
}

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
# class icaltimezone        is repr<CStruct> is export { ... }

constant pvl_elem is export := pvl_elem_t;
constant icalset  is export := icalset_impl;

class VObjectIterator is repr<CStruct> is export {
	has VObject $.start is rw;
	has VObject $.next  is rw;
}

class icalarray is repr<CStruct> is export {
	has size_t          $.element_size    is rw;
	has size_t          $.increment_size  is rw;
	has size_t          $.num_elements    is rw;
	has size_t          $.space_allocated is rw;
	has CArray[Pointer] $.chunks;
}

class icalvcal_defaults is repr<CStruct> is export {
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

# Deferred until icalgauge was defined.
class icaldirset_impl is repr<CStruct> is export {
	has icalset            $.super              is rw;
	has char               $.dir                is rw;
	has icaldirset_options $.options            is rw;
	has icalcluster        $.cluster            is rw;
	has icalgauge          $!gauge;
	has int                $.first_component    is rw;
	has pvl_list           $!directory;
	has pvl_elem           $!directory_iterator;
}

class icalfileset_impl is repr<CStruct> is export {
	has icalset             $!super;
	has char                $.path    is rw;
	has icalfileset_options $.options is rw;
	has icalcomponent       $!cluster;
	has icalgauge           $!gauge;
	has int                 $.changed is rw;
	has int                 $.fd      is rw;
}

class icalgeotype is repr<CStruct> is export {
	has double $.lat is rw;
	has double $.lon is rw;
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
	has icalcompiter       $!iter;
	has icalgauge          $!gauge;
	has icalrecur_iterator $!ritr;
	has icalcomponent      $!last_component;
	has char               $!tzid;
}

class icaltime_span is repr<CStruct> is export {
	has time_t $.start   is rw;
	has time_t $.end     is rw;
	has int    $.is_busy is rw;
}

class icaltimetype {
	has uint32        $.year        is rw;
	has uint32        $.month       is rw;
	has uint32        $.day         is rw;
	has uint32        $.hour        is rw;
	has uint32        $.minute      is rw;
	has uint32        $.second      is rw;
	has uint32        $.is_date     is rw;
	has uint32        $.is_daylight is rw;
	has icaltimezone  $!zone;

  method zone is rw {
    Proxy.new:
      FETCH => -> $                  { $!zone },
      STORE => -> $, icaltimezone \z { $!zone := z };
  }

  multi method new (DateTime $dt is copy, :$timezone, :$dst = False) {
		# cw: An unfortunate, but unavoidable duplication of code.
		sub icaltimezone_get_utc_timezone ()
			returns icaltimezone
			is native(ical)
		{ * }

    my $tz = icaltimetype.new;

		# cw: This isn't working. Consider augmenting class with multi
		#     specifically for timezone (ala :$timezone is required)
		#     that is done in ICal::Timezone
		if $timezone {
			say ::('ICal::Timezone').^name;

			$timezone = do given $timezone {
				when ::('ICal::Timezone') { .icaltimezone }
				when icaltimezone         { $_ }
				when Str                  { ::('ICal::Timezone').new($_) }

				default {
					die "Cannot initialize an icaltimetype using a {
						   .^name } as the timezone";
				}
			}
		}

		$dt .= utc unless $timezone;
		for <year month day hour minute second> {
			my uint32 $tcomp = $dt."$_"().Int;
    	$tz."$_"() = $tcomp;
		}
		$tz.is_daylight = $dst.so.Int;
		$tz.zone = $timezone // icaltimezone_get_utc_timezone();
    $tz;
  }

}

class icalperiodtype {
	HAS icaltimetype     $!start;
	HAS icaltimetype     $!end;
	HAS icaldurationtype $.duration is rw;

	method start is rw {
		Proxy.new:
			FETCH => -> $ { $!start },
			STORE => sub ($, $s) {
				for <year month day hour minute second> {
					my uint32 $tcomp = $s."$_"().Int;
		    	$!start."$_"() = $tcomp;
				}
				$!start.zone = $s.zone if $s.zone;
			}
	}

	method end is rw {
		Proxy.new:
			FETCH => -> $ { $!end },
			STORE => sub ($, $e) {
				for <year month day hour minute second> {
					my uint32 $tcomp = $e."$_"().Int;
					$!end."$_"() = $tcomp;
				}
				$!end.zone = $e.zone if $e.zone;
			}
	}

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
	has Pointer     $.data      is rw;
}

# cw: Alas, needs force us to grab the real definition of icaltimezone
#     from the implementation
# class icaltimezone {
#   has Str           $!tzid;
#   has Str           $!location;
#   has Str           $!tznames;
#   has num64         $.latitude;
#   has num64         $.longitude;
#   has icalcomponent $!component;
#   has icaltimezone  $!builtin_timezone;
#   has int32         $.end_year;
#   has icalarray     $!changes;
#
# 	method tzid is rw {
# 		Proxy.new:
# 			FETCH => -> $           { $!tzid      },
# 			STORE => -> $, Str() \t { $!tzid := t }
# 	}
#
# }

our class icalrecurrencetype is repr<CStruct> is export {
	has icalrecurrencetype_frequency  $.freq                                is rw;
	HAS icaltimetype                  $!until;
	has uint32                        $.count                               is rw;
	has uint16                        $.interval                            is rw;
	has icalrecurrencetype_weekday    $.week_start                          is rw;

	has uint16                        @.by_second[ICAL_BY_SECOND_SIZE]      is CArray;
	has uint16                        @.by_minute[ICAL_BY_MINUTE_SIZE]      is CArray;
	has uint16                        @.by_hour[ICAL_BY_HOUR_SIZE]          is CArray;
	has uint16                        @.by_day[ICAL_BY_DAY_SIZE]            is CArray;
	has uint16                        @.by_month_day[ICAL_BY_MONTHDAY_SIZE] is CArray;
	has uint16                        @.by_year_day[ICAL_BY_YEARDAY_SIZE]   is CArray;
	has uint16                        @.by_week_no[ICAL_BY_WEEKNO_SIZE]     is CArray;
	has uint16                        @.by_month[ICAL_BY_MONTH_SIZE]        is CArray;
	has uint16                        @.by_set_pos[ICAL_BY_SETPOS_SIZE]     is CArray;

	has Str                           $!rscale;
	has icalrecurrencetype_skip       $.skip                                is rw;

	method until is rw {
		Proxy.new:
			FETCH => -> $                     { $!until },
			STORE => -> $, icaltimetype() $tt { $!until := $tt };
	}

	method rscale is rw  {
		Proxy.new:
			FETCH => -> $           { $!rscale },
			STORE => -> $, Str() $s { $!rscale := $s };
	}
}

our subset ICalTimeRakuDate is export of Mu where icaltimetype | DateTime;

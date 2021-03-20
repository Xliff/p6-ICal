use v6.c;

unit package ICal::Raw::Types;

constant ical_unknown_token_handling is export := int32;
our enum ical_unknown_token_handlingEnum is export (
  ICAL_ASSUME_IANA_TOKEN => 1,
  ICAL_DISCARD_TOKEN     => 2,
  ICAL_TREAT_AS_ERROR    => 3,
);

constant icalcomponent_kind is export := uint32;
our enum icalcomponent_kindEnum is export <
  ICAL_NO_COMPONENT
  ICAL_ANY_COMPONENT
  ICAL_XROOT_COMPONENT
  ICAL_XATTACH_COMPONENT
  ICAL_VEVENT_COMPONENT
  ICAL_VTODO_COMPONENT
  ICAL_VJOURNAL_COMPONENT
  ICAL_VCALENDAR_COMPONENT
  ICAL_VAGENDA_COMPONENT
  ICAL_VFREEBUSY_COMPONENT
  ICAL_VALARM_COMPONENT
  ICAL_XAUDIOALARM_COMPONENT
  ICAL_XDISPLAYALARM_COMPONENT
  ICAL_XEMAILALARM_COMPONENT
  ICAL_XPROCEDUREALARM_COMPONENT
  ICAL_VTIMEZONE_COMPONENT
  ICAL_XSTANDARD_COMPONENT
  ICAL_XDAYLIGHT_COMPONENT
  ICAL_X_COMPONENT
  ICAL_VSCHEDULE_COMPONENT
  ICAL_VQUERY_COMPONENT
  ICAL_VREPLY_COMPONENT
  ICAL_VCAR_COMPONENT
  ICAL_VCOMMAND_COMPONENT
  ICAL_XLICINVALID_COMPONENT
  ICAL_XLICMIMEPART_COMPONENT
  ICAL_VAVAILABILITY_COMPONENT
  ICAL_XAVAILABLE_COMPONENT
  ICAL_VPOLL_COMPONENT
  ICAL_VVOTER_COMPONENT
  ICAL_XVOTE_COMPONENT
  ICAL_VPATCH_COMPONENT
  ICAL_XPATCH_COMPONENT
>;

constant icalerrorenum is export := uint32;
our enum icalerrorenumEnum is export (
  ICAL_NO_ERROR            => 0,
  'ICAL_BADARG_ERROR',
  'ICAL_NEWFAILED_ERROR',
  'ICAL_ALLOCATION_ERROR',
  'ICAL_MALFORMEDDATA_ERROR',
  'ICAL_PARSE_ERROR',
  'ICAL_INTERNAL_ERROR',
  'ICAL_FILE_ERROR',
  'ICAL_USAGE_ERROR',
  'ICAL_UNIMPLEMENTED_ERROR',
  'ICAL_UNKNOWN_ERROR'
);

constant icalerrorstate is export := uint32;
our enum icalerrorstateEnum is export <
  ICAL_ERROR_FATAL
  ICAL_ERROR_NONFATAL
  ICAL_ERROR_DEFAULT
  ICAL_ERROR_UNKNOWN
>;

constant icalgaugelogic is export := uint32;
our enum icalgaugelogicEnum is export <
  ICALGAUGELOGIC_NONE
  ICALGAUGELOGIC_AND
  ICALGAUGELOGIC_OR
>;

constant icalparameter_action is export := uint32;
our enum icalparameter_actionEnum is export (
  ICAL_ACTIONPARAM_X     => 20000,
  ICAL_ACTIONPARAM_ASK   => 20001,
  ICAL_ACTIONPARAM_ABORT => 20002,
  ICAL_ACTIONPARAM_NONE  => 20099
);

constant icalparameter_cutype is export := uint32;
our enum icalparameter_cutypeEnum is export (
  ICAL_CUTYPE_X          => 20100,
  ICAL_CUTYPE_INDIVIDUAL => 20101,
  ICAL_CUTYPE_GROUP      => 20102,
  ICAL_CUTYPE_RESOURCE   => 20103,
  ICAL_CUTYPE_ROOM       => 20104,
  ICAL_CUTYPE_UNKNOWN    => 20105,
  ICAL_CUTYPE_NONE       => 20199
);

constant icalparameter_display is export := uint32;
our enum icalparameter_displayEnum is export (
  ICAL_DISPLAY_X         => 22000,
  ICAL_DISPLAY_BADGE     => 22001,
  ICAL_DISPLAY_GRAPHIC   => 22002,
  ICAL_DISPLAY_FULLSIZE  => 22003,
  ICAL_DISPLAY_THUMBNAIL => 22004,
  ICAL_DISPLAY_NONE      => 22099
);

constant icalparameter_enable is export := uint32;
our enum icalparameter_enableEnum is export (
  ICAL_ENABLE_X     => 20200,
  ICAL_ENABLE_TRUE  => 20201,
  ICAL_ENABLE_FALSE => 20202,
  ICAL_ENABLE_NONE  => 20299
);

constant icalparameter_encoding is export := uint32;
our enum icalparameter_encodingEnum is export (
  ICAL_ENCODING_X      => 20300,
  ICAL_ENCODING_8BIT   => 20301,
  ICAL_ENCODING_BASE64 => 20302,
  ICAL_ENCODING_NONE   => 20399
);

constant icalparameter_fbtype is export := uint32;
our enum icalparameter_fbtypeEnum is export (
  ICAL_FBTYPE_X               => 20400,
  ICAL_FBTYPE_FREE            => 20401,
  ICAL_FBTYPE_BUSY            => 20402,
  ICAL_FBTYPE_BUSYUNAVAILABLE => 20403,
  ICAL_FBTYPE_BUSYTENTATIVE   => 20404,
  ICAL_FBTYPE_NONE            => 20499
);

constant icalparameter_feature is export := uint32;
our enum icalparameter_featureEnum is export (
  ICAL_FEATURE_X         => 22100,
  ICAL_FEATURE_AUDIO     => 22101,
  ICAL_FEATURE_CHAT      => 22102,
  ICAL_FEATURE_FEED      => 22103,
  ICAL_FEATURE_MODERATOR => 22104,
  ICAL_FEATURE_PHONE     => 22105,
  ICAL_FEATURE_SCREEN    => 22106,
  ICAL_FEATURE_VIDEO     => 22107,
  ICAL_FEATURE_NONE      => 22199
);

constant icalparameter_kind is export := uint32;
our enum icalparameter_kindEnum is export (
  ICAL_ANY_PARAMETER               =>  0,
  ICAL_ACTIONPARAM_PARAMETER       =>  1,
  ICAL_ALTREP_PARAMETER            =>  2,
  ICAL_CHARSET_PARAMETER           =>  3,
  ICAL_CN_PARAMETER                =>  4,
  ICAL_CUTYPE_PARAMETER            =>  5,
  ICAL_DELEGATEDFROM_PARAMETER     =>  6,
  ICAL_DELEGATEDTO_PARAMETER       =>  7,
  ICAL_DIR_PARAMETER               =>  8,
  ICAL_DISPLAY_PARAMETER           => 46,
  ICAL_EMAIL_PARAMETER             => 50,
  ICAL_ENABLE_PARAMETER            =>  9,
  ICAL_ENCODING_PARAMETER          => 10,
  ICAL_FBTYPE_PARAMETER            => 11,
  ICAL_FEATURE_PARAMETER           => 48,
  ICAL_FILENAME_PARAMETER          => 42,
  ICAL_FMTTYPE_PARAMETER           => 12,
  ICAL_IANA_PARAMETER              => 33,
  ICAL_ID_PARAMETER                => 13,
  ICAL_LABEL_PARAMETER             => 49,
  ICAL_LANGUAGE_PARAMETER          => 14,
  ICAL_LATENCY_PARAMETER           => 15,
  ICAL_LOCAL_PARAMETER             => 16,
  ICAL_LOCALIZE_PARAMETER          => 17,
  ICAL_MANAGEDID_PARAMETER         => 40,
  ICAL_MEMBER_PARAMETER            => 18,
  ICAL_MODIFIED_PARAMETER          => 44,
  ICAL_OPTIONS_PARAMETER           => 19,
  ICAL_PARTSTAT_PARAMETER          => 20,
  ICAL_PATCHACTION_PARAMETER       => 51,
  ICAL_PUBLICCOMMENT_PARAMETER     => 37,
  ICAL_RANGE_PARAMETER             => 21,
  ICAL_REASON_PARAMETER            => 43,
  ICAL_RELATED_PARAMETER           => 22,
  ICAL_RELTYPE_PARAMETER           => 23,
  ICAL_REQUIRED_PARAMETER          => 43,
  ICAL_RESPONSE_PARAMETER          => 38,
  ICAL_ROLE_PARAMETER              => 24,
  ICAL_RSVP_PARAMETER              => 25,
  ICAL_SCHEDULEAGENT_PARAMETER     => 34,
  ICAL_SCHEDULEFORCESEND_PARAMETER => 35,
  ICAL_SCHEDULESTATUS_PARAMETER    => 36,
  ICAL_SENTBY_PARAMETER            => 26,
  ICAL_SIZE_PARAMETER              => 41,
  ICAL_STAYINFORMED_PARAMETER      => 39,
  ICAL_SUBSTATE_PARAMETER          => 45,
  ICAL_TZID_PARAMETER              => 27,
  ICAL_VALUE_PARAMETER             => 28,
  ICAL_X_PARAMETER                 => 29,
  ICAL_XLICCOMPARETYPE_PARAMETER   => 30,
  ICAL_XLICERRORTYPE_PARAMETER     => 31,
  ICAL_NO_PARAMETER                => 32
);

constant icalparameter_local is export := uint32;
our enum icalparameter_localEnum is export (
  ICAL_LOCAL_X     => 20500,
  ICAL_LOCAL_TRUE  => 20501,
  ICAL_LOCAL_FALSE => 20502,
  ICAL_LOCAL_NONE  => 20599
);

constant icalparameter_partstat is export := uint32;
our enum icalparameter_partstatEnum is export (
  ICAL_PARTSTAT_X           => 20600,
  ICAL_PARTSTAT_NEEDSACTION => 20601,
  ICAL_PARTSTAT_ACCEPTED    => 20602,
  ICAL_PARTSTAT_DECLINED    => 20603,
  ICAL_PARTSTAT_TENTATIVE   => 20604,
  ICAL_PARTSTAT_DELEGATED   => 20605,
  ICAL_PARTSTAT_COMPLETED   => 20606,
  ICAL_PARTSTAT_INPROCESS   => 20607,
  ICAL_PARTSTAT_FAILED      => 20608,
  ICAL_PARTSTAT_NONE        => 20699
);

constant icalparameter_patchaction is export := uint32;
our enum icalparameter_patchactionEnum is export (
  ICAL_PATCHACTION_X       => 22200,
  ICAL_PATCHACTION_CREATE  => 22201,
  ICAL_PATCHACTION_BYNAME  => 22202,
  ICAL_PATCHACTION_BYVALUE => 22203,
  ICAL_PATCHACTION_BYPARAM => 22204,
  ICAL_PATCHACTION_NONE    => 22299
);

constant icalparameter_range is export := uint32;
our enum icalparameter_rangeEnum is export (
  ICAL_RANGE_X             => 20700,
  ICAL_RANGE_THISANDPRIOR  => 20701,
  ICAL_RANGE_THISANDFUTURE => 20702,
  ICAL_RANGE_NONE          => 20799
);

constant icalparameter_related is export := uint32;
our enum icalparameter_relatedEnum is export (
  ICAL_RELATED_X     => 20800,
  ICAL_RELATED_START => 20801,
  ICAL_RELATED_END   => 20802,
  ICAL_RELATED_NONE  => 20899
);

constant icalparameter_reltype is export := uint32;
our enum icalparameter_reltypeEnum is export (
  ICAL_RELTYPE_X       => 20900,
  ICAL_RELTYPE_PARENT  => 20901,
  ICAL_RELTYPE_CHILD   => 20902,
  ICAL_RELTYPE_SIBLING => 20903,
  ICAL_RELTYPE_POLL    => 20904,
  ICAL_RELTYPE_NONE    => 20999
);

constant icalparameter_required is export := uint32;
our enum icalparameter_requiredEnum is export (
  ICAL_REQUIRED_X     => 21000,
  ICAL_REQUIRED_TRUE  => 21001,
  ICAL_REQUIRED_FALSE => 21002,
  ICAL_REQUIRED_NONE  => 21099
);

constant icalparameter_role is export := uint32;
our enum icalparameter_roleEnum is export (
  ICAL_ROLE_X              => 21100,
  ICAL_ROLE_CHAIR          => 21101,
  ICAL_ROLE_REQPARTICIPANT => 21102,
  ICAL_ROLE_OPTPARTICIPANT => 21103,
  ICAL_ROLE_NONPARTICIPANT => 21104,
  ICAL_ROLE_NONE           => 21199
);

constant icalparameter_rsvp is export := uint32;
our enum icalparameter_rsvpEnum is export (
  ICAL_RSVP_X     => 21200,
  ICAL_RSVP_TRUE  => 21201,
  ICAL_RSVP_FALSE => 21202,
  ICAL_RSVP_NONE  => 21299
);

constant icalparameter_scheduleagent is export := uint32;
our enum icalparameter_scheduleagentEnum is export (
  ICAL_SCHEDULEAGENT_X      => 21300,
  ICAL_SCHEDULEAGENT_SERVER => 21301,
  ICAL_SCHEDULEAGENT_CLIENT => 21302,
  ICAL_SCHEDULEAGENT_NONE   => 21399
);

constant icalparameter_scheduleforcesend is export := uint32;
our enum icalparameter_scheduleforcesendEnum is export (
  ICAL_SCHEDULEFORCESEND_X       => 21400,
  ICAL_SCHEDULEFORCESEND_REQUEST => 21401,
  ICAL_SCHEDULEFORCESEND_REPLY   => 21402,
  ICAL_SCHEDULEFORCESEND_NONE    => 21499
);

constant icalparameter_stayinformed is export := uint32;
our enum icalparameter_stayinformedEnum is export (
  ICAL_STAYINFORMED_X     => 21500,
  ICAL_STAYINFORMED_TRUE  => 21501,
  ICAL_STAYINFORMED_FALSE => 21502,
  ICAL_STAYINFORMED_NONE  => 21599
);

constant icalparameter_substate is export := uint32;
our enum icalparameter_substateEnum is export (
  ICAL_SUBSTATE_X         => 21900,
  ICAL_SUBSTATE_OK        => 21901,
  ICAL_SUBSTATE_ERROR     => 21902,
  ICAL_SUBSTATE_SUSPENDED => 21903,
  ICAL_SUBSTATE_NONE      => 21999
);

constant icalparameter_value is export := uint32;
our enum icalparameter_valueEnum is export (
  ICAL_VALUE_X          => 21600,
  ICAL_VALUE_BINARY     => 21601,
  ICAL_VALUE_BOOLEAN    => 21602,
  ICAL_VALUE_DATE       => 21603,
  ICAL_VALUE_DURATION   => 21604,
  ICAL_VALUE_FLOAT      => 21605,
  ICAL_VALUE_INTEGER    => 21606,
  ICAL_VALUE_PERIOD     => 21607,
  ICAL_VALUE_RECUR      => 21608,
  ICAL_VALUE_TEXT       => 21609,
  ICAL_VALUE_URI        => 21610,
  ICAL_VALUE_ERROR      => 21611,
  ICAL_VALUE_DATETIME   => 21612,
  ICAL_VALUE_UTCOFFSET  => 21613,
  ICAL_VALUE_CALADDRESS => 21614,
  ICAL_VALUE_NONE       => 21699
);

constant icalparameter_xliccomparetype is export := uint32;
our enum icalparameter_xliccomparetypeEnum is export (
  ICAL_XLICCOMPARETYPE_X            => 21700,
  ICAL_XLICCOMPARETYPE_EQUAL        => 21701,
  ICAL_XLICCOMPARETYPE_NOTEQUAL     => 21702,
  ICAL_XLICCOMPARETYPE_LESS         => 21703,
  ICAL_XLICCOMPARETYPE_GREATER      => 21704,
  ICAL_XLICCOMPARETYPE_LESSEQUAL    => 21705,
  ICAL_XLICCOMPARETYPE_GREATEREQUAL => 21706,
  ICAL_XLICCOMPARETYPE_REGEX        => 21707,
  ICAL_XLICCOMPARETYPE_ISNULL       => 21708,
  ICAL_XLICCOMPARETYPE_ISNOTNULL    => 21709,
  ICAL_XLICCOMPARETYPE_NONE         => 21799
);

constant icalparameter_xlicerrortype is export := uint32;
our enum icalparameter_xlicerrortypeEnum is export (
  ICAL_XLICERRORTYPE_X                        => 21800,
  ICAL_XLICERRORTYPE_COMPONENTPARSEERROR      => 21801,
  ICAL_XLICERRORTYPE_PROPERTYPARSEERROR       => 21802,
  ICAL_XLICERRORTYPE_PARAMETERNAMEPARSEERROR  => 21803,
  ICAL_XLICERRORTYPE_PARAMETERVALUEPARSEERROR => 21804,
  ICAL_XLICERRORTYPE_VALUEPARSEERROR          => 21805,
  ICAL_XLICERRORTYPE_INVALIDITIP              => 21806,
  ICAL_XLICERRORTYPE_UNKNOWNVCALPROPERROR     => 21807,
  ICAL_XLICERRORTYPE_MIMEPARSEERROR           => 21808,
  ICAL_XLICERRORTYPE_VCALPROPPARSEERROR       => 21809,
  ICAL_XLICERRORTYPE_NONE                     => 21899
);

constant icalparser_state is export := uint32;
our enum icalparser_stateEnum is export <
  ICALPARSER_ERROR
  ICALPARSER_SUCCESS
  ICALPARSER_BEGIN_COMP
  ICALPARSER_END_COMP
  ICALPARSER_IN_PROGRESS
>;

constant icalproperty_action is export := uint32;
our enum icalproperty_actionEnum is export (
  ICAL_ACTION_X         => 10000,
  ICAL_ACTION_AUDIO     => 10001,
  ICAL_ACTION_DISPLAY   => 10002,
  ICAL_ACTION_EMAIL     => 10003,
  ICAL_ACTION_PROCEDURE => 10004,
  ICAL_ACTION_NONE      => 10099
);

constant icalproperty_busytype is export := uint32;
our enum icalproperty_busytypeEnum is export (
  ICAL_BUSYTYPE_X               => 10100,
  ICAL_BUSYTYPE_BUSY            => 10101,
  ICAL_BUSYTYPE_BUSYUNAVAILABLE => 10102,
  ICAL_BUSYTYPE_BUSYTENTATIVE   => 10103,
  ICAL_BUSYTYPE_NONE            => 10199
);

constant icalproperty_carlevel is export := uint32;
our enum icalproperty_carlevelEnum is export (
  ICAL_CARLEVEL_X        => 10200,
  ICAL_CARLEVEL_CARNONE  => 10201,
  ICAL_CARLEVEL_CARMIN   => 10202,
  ICAL_CARLEVEL_CARFULL1 => 10203,
  ICAL_CARLEVEL_NONE     => 10299
);

constant icalproperty_class is export := uint32;
our enum icalproperty_classEnum is export (
  ICAL_CLASS_X            => 10300,
  ICAL_CLASS_PUBLIC       => 10301,
  ICAL_CLASS_PRIVATE      => 10302,
  ICAL_CLASS_CONFIDENTIAL => 10303,
  ICAL_CLASS_NONE         => 10399
);

constant icalproperty_cmd is export := uint32;
our enum icalproperty_cmdEnum is export (
  ICAL_CMD_X             => 10400,
  ICAL_CMD_ABORT         => 10401,
  ICAL_CMD_CONTINUE      => 10402,
  ICAL_CMD_CREATE        => 10403,
  ICAL_CMD_DELETE        => 10404,
  ICAL_CMD_GENERATEUID   => 10405,
  ICAL_CMD_GETCAPABILITY => 10406,
  ICAL_CMD_IDENTIFY      => 10407,
  ICAL_CMD_MODIFY        => 10408,
  ICAL_CMD_MOVE          => 10409,
  ICAL_CMD_REPLY         => 10410,
  ICAL_CMD_SEARCH        => 10411,
  ICAL_CMD_SETLOCALE     => 10412,
  ICAL_CMD_NONE          => 10499
);

constant icalproperty_kind is export := uint32;
our enum icalproperty_kindEnum is export (
  ICAL_ANY_PROPERTY                 =>   0,
  ICAL_ACKNOWLEDGED_PROPERTY        =>   1,
  ICAL_ACTION_PROPERTY              =>   2,
  ICAL_ALLOWCONFLICT_PROPERTY       =>   3,
  ICAL_ATTACH_PROPERTY              =>   4,
  ICAL_ATTENDEE_PROPERTY            =>   5,
  ICAL_CALID_PROPERTY               =>   6,
  ICAL_CALMASTER_PROPERTY           =>   7,
  ICAL_CALSCALE_PROPERTY            =>   8,
  ICAL_CAPVERSION_PROPERTY          =>   9,
  ICAL_CARLEVEL_PROPERTY            =>  10,
  ICAL_CARID_PROPERTY               =>  11,
  ICAL_CATEGORIES_PROPERTY          =>  12,
  ICAL_CLASS_PROPERTY               =>  13,
  ICAL_CMD_PROPERTY                 =>  14,
  ICAL_COMMENT_PROPERTY             =>  15,
  ICAL_COMPLETED_PROPERTY           =>  16,
  ICAL_COMPONENTS_PROPERTY          =>  17,
  ICAL_CONTACT_PROPERTY             =>  18,
  ICAL_CREATED_PROPERTY             =>  19,
  ICAL_CSID_PROPERTY                =>  20,
  ICAL_DATEMAX_PROPERTY             =>  21,
  ICAL_DATEMIN_PROPERTY             =>  22,
  ICAL_DECREED_PROPERTY             =>  23,
  ICAL_DEFAULTCHARSET_PROPERTY      =>  24,
  ICAL_DEFAULTLOCALE_PROPERTY       =>  25,
  ICAL_DEFAULTTZID_PROPERTY         =>  26,
  ICAL_DEFAULTVCARS_PROPERTY        =>  27,
  ICAL_DENY_PROPERTY                =>  28,
  ICAL_DESCRIPTION_PROPERTY         =>  29,
  ICAL_DTEND_PROPERTY               =>  30,
  ICAL_DTSTAMP_PROPERTY             =>  31,
  ICAL_DTSTART_PROPERTY             =>  32,
  ICAL_DUE_PROPERTY                 =>  33,
  ICAL_DURATION_PROPERTY            =>  34,
  ICAL_EXDATE_PROPERTY              =>  35,
  ICAL_EXPAND_PROPERTY              =>  36,
  ICAL_EXRULE_PROPERTY              =>  37,
  ICAL_FREEBUSY_PROPERTY            =>  38,
  ICAL_GEO_PROPERTY                 =>  39,
  ICAL_GRANT_PROPERTY               =>  40,
  ICAL_ITIPVERSION_PROPERTY         =>  41,
  ICAL_LASTMODIFIED_PROPERTY        =>  42,
  ICAL_LOCATION_PROPERTY            =>  43,
  ICAL_MAXCOMPONENTSIZE_PROPERTY    =>  44,
  ICAL_MAXDATE_PROPERTY             =>  45,
  ICAL_MAXRESULTS_PROPERTY          =>  46,
  ICAL_MAXRESULTSSIZE_PROPERTY      =>  47,
  ICAL_METHOD_PROPERTY              =>  48,
  ICAL_MINDATE_PROPERTY             =>  49,
  ICAL_MULTIPART_PROPERTY           =>  50,
  ICAL_ORGANIZER_PROPERTY           =>  52,
  ICAL_OWNER_PROPERTY               =>  53,
  ICAL_PERCENTCOMPLETE_PROPERTY     =>  54,
  ICAL_PERMISSION_PROPERTY          =>  55,
  ICAL_PRODID_PROPERTY              =>  57,
  ICAL_QUERY_PROPERTY               =>  58,
  ICAL_QUERYLEVEL_PROPERTY          =>  59,
  ICAL_QUERYID_PROPERTY             =>  60,
  ICAL_QUERYNAME_PROPERTY           =>  61,
  ICAL_RDATE_PROPERTY               =>  62,
  ICAL_RECURACCEPTED_PROPERTY       =>  63,
  ICAL_RECUREXPAND_PROPERTY         =>  64,
  ICAL_RECURLIMIT_PROPERTY          =>  65,
  ICAL_RECURRENCEID_PROPERTY        =>  66,
  ICAL_RELATEDTO_PROPERTY           =>  67,
  ICAL_RELCALID_PROPERTY            =>  68,
  ICAL_REPEAT_PROPERTY              =>  69,
  ICAL_REQUESTSTATUS_PROPERTY       =>  70,
  ICAL_RESOURCES_PROPERTY           =>  71,
  ICAL_PRIORITY_PROPERTY            =>  56,
  ICAL_RESTRICTION_PROPERTY         =>  72,
  ICAL_RRULE_PROPERTY               =>  73,
  ICAL_SCOPE_PROPERTY               =>  74,
  ICAL_SEQUENCE_PROPERTY            =>  75,
  ICAL_STATUS_PROPERTY              =>  76,
  ICAL_STORESEXPANDED_PROPERTY      =>  77,
  ICAL_SUMMARY_PROPERTY             =>  78,
  ICAL_TARGET_PROPERTY              =>  79,
  ICAL_TRANSP_PROPERTY              =>  80,
  ICAL_TRIGGER_PROPERTY             =>  81,
  ICAL_TZID_PROPERTY                =>  82,
  ICAL_TZNAME_PROPERTY              =>  83,
  ICAL_TZURL_PROPERTY               =>  86,
  ICAL_TZOFFSETFROM_PROPERTY        =>  84,
  ICAL_TZOFFSETTO_PROPERTY          =>  85,
  ICAL_UID_PROPERTY                 =>  87,
  ICAL_URL_PROPERTY                 =>  88,
  ICAL_X_PROPERTY                   =>  90,
  ICAL_XLICCLASS_PROPERTY           =>  91,
  ICAL_XLICCLUSTERCOUNT_PROPERTY    =>  92,
  ICAL_XLICERROR_PROPERTY           =>  93,
  ICAL_XLICMIMECHARSET_PROPERTY     =>  94,
  ICAL_XLICMIMECID_PROPERTY         =>  95,
  ICAL_XLICMIMECONTENTTYPE_PROPERTY =>  96,
  ICAL_XLICMIMEENCODING_PROPERTY    =>  97,
  ICAL_XLICMIMEFILENAME_PROPERTY    =>  98,
  ICAL_XLICMIMEOPTINFO_PROPERTY     =>  99,
  ICAL_VERSION_PROPERTY             =>  89,
  ICAL_NO_PROPERTY                  => 100,
  ICAL_BUSYTYPE_PROPERTY            => 101,
  ICAL_ACCEPTRESPONSE_PROPERTY      => 102,
  ICAL_POLLITEMID_PROPERTY          => 103,
  ICAL_POLLMODE_PROPERTY            => 104,
  ICAL_POLLPROPERTIES_PROPERTY      => 105,
  ICAL_POLLWINNER_PROPERTY          => 106,
  ICAL_VOTER_PROPERTY               => 107,
  ICAL_TZIDALIASOF_PROPERTY         => 108,
  ICAL_TZUNTIL_PROPERTY             => 109,
  ICAL_POLLCOMPLETION_PROPERTY      => 110,
  ICAL_REPLYURL_PROPERTY            => 111,
  ICAL_RESPONSE_PROPERTY            => 112,
  ICAL_ESTIMATEDDURATION_PROPERTY   => 113,
  ICAL_TASKMODE_PROPERTY            => 114,
  ICAL_NAME_PROPERTY                => 115,
  ICAL_REFRESHINTERVAL_PROPERTY     => 116,
  ICAL_SOURCE_PROPERTY              => 117,
  ICAL_COLOR_PROPERTY               => 118,
  ICAL_IMAGE_PROPERTY               => 119,
  ICAL_CONFERENCE_PROPERTY          => 120,
  ICAL_PATCHVERSION_PROPERTY        => 121,
  ICAL_PATCHDELETE_PROPERTY         => 124,
  ICAL_PATCHORDER_PROPERTY          => 122,
  ICAL_PATCHPARAMETER_PROPERTY      => 125,
  ICAL_PATCHTARGET_PROPERTY         => 123,
);

constant icalproperty_method is export := uint32;
our enum icalproperty_methodEnum is export (
  ICAL_METHOD_X              => 10500,
  ICAL_METHOD_PUBLISH        => 10501,
  ICAL_METHOD_REQUEST        => 10502,
  ICAL_METHOD_REPLY          => 10503,
  ICAL_METHOD_ADD            => 10504,
  ICAL_METHOD_CANCEL         => 10505,
  ICAL_METHOD_REFRESH        => 10506,
  ICAL_METHOD_COUNTER        => 10507,
  ICAL_METHOD_DECLINECOUNTER => 10508,
  ICAL_METHOD_CREATE         => 10509,
  ICAL_METHOD_READ           => 10510,
  ICAL_METHOD_RESPONSE       => 10511,
  ICAL_METHOD_MOVE           => 10512,
  ICAL_METHOD_MODIFY         => 10513,
  ICAL_METHOD_GENERATEUID    => 10514,
  ICAL_METHOD_DELETE         => 10515,
  ICAL_METHOD_POLLSTATUS     => 10516,
  ICAL_METHOD_NONE           => 10599
);

constant icalproperty_pollcompletion is export := uint32;
our enum icalproperty_pollcompletionEnum is export (
  ICAL_POLLCOMPLETION_X            => 10600,
  ICAL_POLLCOMPLETION_SERVER       => 10601,
  ICAL_POLLCOMPLETION_SERVERSUBMIT => 10602,
  ICAL_POLLCOMPLETION_SERVERCHOICE => 10603,
  ICAL_POLLCOMPLETION_CLIENT       => 10604,
  ICAL_POLLCOMPLETION_NONE         => 10699
);

constant icalproperty_pollmode is export := uint32;
our enum icalproperty_pollmodeEnum is export (
  ICAL_POLLMODE_X     => 10700,
  ICAL_POLLMODE_BASIC => 10701,
  ICAL_POLLMODE_NONE  => 10799
);

constant icalproperty_querylevel is export := uint32;
our enum icalproperty_querylevelEnum is export (
  ICAL_QUERYLEVEL_X         => 10800,
  ICAL_QUERYLEVEL_CALQL1    => 10801,
  ICAL_QUERYLEVEL_CALQLNONE => 10802,
  ICAL_QUERYLEVEL_NONE      => 10899
);

constant icalproperty_status is export := uint32;
our enum icalproperty_statusEnum is export (
  ICAL_STATUS_X           => 10900,
  ICAL_STATUS_TENTATIVE   => 10901,
  ICAL_STATUS_CONFIRMED   => 10902,
  ICAL_STATUS_COMPLETED   => 10903,
  ICAL_STATUS_NEEDSACTION => 10904,
  ICAL_STATUS_CANCELLED   => 10905,
  ICAL_STATUS_INPROCESS   => 10906,
  ICAL_STATUS_DRAFT       => 10907,
  ICAL_STATUS_FINAL       => 10908,
  ICAL_STATUS_SUBMITTED   => 10909,
  ICAL_STATUS_PENDING     => 10910,
  ICAL_STATUS_FAILED      => 10911,
  ICAL_STATUS_DELETED     => 10912,
  ICAL_STATUS_NONE        => 10999
);

constant icalproperty_taskmode is export := uint32;
our enum icalproperty_taskmodeEnum is export (
  ICAL_TASKMODE_X                   => 11200,
  ICAL_TASKMODE_AUTOMATICCOMPLETION => 11201,
  ICAL_TASKMODE_AUTOMATICFAILURE    => 11202,
  ICAL_TASKMODE_AUTOMATICSTATUS     => 11203,
  ICAL_TASKMODE_NONE                => 11299
);

constant icalproperty_transp is export := uint32;
our enum icalproperty_transpEnum is export (
  ICAL_TRANSP_X                     => 11000,
  ICAL_TRANSP_OPAQUE                => 11001,
  ICAL_TRANSP_OPAQUENOCONFLICT      => 11002,
  ICAL_TRANSP_TRANSPARENT           => 11003,
  ICAL_TRANSP_TRANSPARENTNOCONFLICT => 11004,
  ICAL_TRANSP_NONE                  => 11099
);

constant icalproperty_xlicclass is export := uint32;
our enum icalproperty_xlicclassEnum is export (
  ICAL_XLICCLASS_X                   => 11100,
  ICAL_XLICCLASS_PUBLISHNEW          => 11101,
  ICAL_XLICCLASS_PUBLISHUPDATE       => 11102,
  ICAL_XLICCLASS_PUBLISHFREEBUSY     => 11103,
  ICAL_XLICCLASS_REQUESTNEW          => 11104,
  ICAL_XLICCLASS_REQUESTUPDATE       => 11105,
  ICAL_XLICCLASS_REQUESTRESCHEDULE   => 11106,
  ICAL_XLICCLASS_REQUESTDELEGATE     => 11107,
  ICAL_XLICCLASS_REQUESTNEWORGANIZER => 11108,
  ICAL_XLICCLASS_REQUESTFORWARD      => 11109,
  ICAL_XLICCLASS_REQUESTSTATUS       => 11110,
  ICAL_XLICCLASS_REQUESTFREEBUSY     => 11111,
  ICAL_XLICCLASS_REPLYACCEPT         => 11112,
  ICAL_XLICCLASS_REPLYDECLINE        => 11113,
  ICAL_XLICCLASS_REPLYDELEGATE       => 11114,
  ICAL_XLICCLASS_REPLYCRASHERACCEPT  => 11115,
  ICAL_XLICCLASS_REPLYCRASHERDECLINE => 11116,
  ICAL_XLICCLASS_ADDINSTANCE         => 11117,
  ICAL_XLICCLASS_CANCELEVENT         => 11118,
  ICAL_XLICCLASS_CANCELINSTANCE      => 11119,
  ICAL_XLICCLASS_CANCELALL           => 11120,
  ICAL_XLICCLASS_REFRESH             => 11121,
  ICAL_XLICCLASS_COUNTER             => 11122,
  ICAL_XLICCLASS_DECLINECOUNTER      => 11123,
  ICAL_XLICCLASS_MALFORMED           => 11124,
  ICAL_XLICCLASS_OBSOLETE            => 11125,
  ICAL_XLICCLASS_MISSEQUENCED        => 11126,
  ICAL_XLICCLASS_UNKNOWN             => 11127,
  ICAL_XLICCLASS_NONE                => 11199
);

constant icalrecurrencetype_frequency is export := uint32;
our enum icalrecurrencetype_frequencyEnum is export (
  ICAL_SECONDLY_RECURRENCE => 0,
  ICAL_MINUTELY_RECURRENCE => 1,
  ICAL_HOURLY_RECURRENCE   => 2,
  ICAL_DAILY_RECURRENCE    => 3,
  ICAL_WEEKLY_RECURRENCE   => 4,
  ICAL_MONTHLY_RECURRENCE  => 5,
  ICAL_YEARLY_RECURRENCE   => 6,
  ICAL_NO_RECURRENCE       => 7
);

constant icalrecurrencetype_skip is export := uint32;
our enum icalrecurrencetype_skipEnum is export (
  ICAL_SKIP_BACKWARD  => 0,
  'ICAL_SKIP_FORWARD',
  'ICAL_SKIP_OMIT',
  'ICAL_SKIP_UNDEFINED'
);

constant icalrecurrencetype_weekday is export := uint32;
our enum icalrecurrencetype_weekdayEnum is export <
  ICAL_NO_WEEKDAY
  ICAL_SUNDAY_WEEKDAY
  ICAL_MONDAY_WEEKDAY
  ICAL_TUESDAY_WEEKDAY
  ICAL_WEDNESDAY_WEEKDAY
  ICAL_THURSDAY_WEEKDAY
  ICAL_FRIDAY_WEEKDAY
  ICAL_SATURDAY_WEEKDAY
>;

constant icalrequeststatus is export := uint32;
our enum icalrequeststatusEnum is export <
  ICAL_UNKNOWN_STATUS
  ICAL_2_0_SUCCESS_STATUS
  ICAL_2_1_FALLBACK_STATUS
  ICAL_2_2_IGPROP_STATUS
  ICAL_2_3_IGPARAM_STATUS
  ICAL_2_4_IGXPROP_STATUS
  ICAL_2_5_IGXPARAM_STATUS
  ICAL_2_6_IGCOMP_STATUS
  ICAL_2_7_FORWARD_STATUS
  ICAL_2_8_ONEEVENT_STATUS
  ICAL_2_9_TRUNC_STATUS
  ICAL_2_10_ONETODO_STATUS
  ICAL_2_11_TRUNCRRULE_STATUS
  ICAL_3_0_INVPROPNAME_STATUS
  ICAL_3_1_INVPROPVAL_STATUS
  ICAL_3_2_INVPARAM_STATUS
  ICAL_3_3_INVPARAMVAL_STATUS
  ICAL_3_4_INVCOMP_STATUS
  ICAL_3_5_INVTIME_STATUS
  ICAL_3_6_INVRULE_STATUS
  ICAL_3_7_INVCU_STATUS
  ICAL_3_8_NOAUTH_STATUS
  ICAL_3_9_BADVERSION_STATUS
  ICAL_3_10_TOOBIG_STATUS
  ICAL_3_11_MISSREQCOMP_STATUS
  ICAL_3_12_UNKCOMP_STATUS
  ICAL_3_13_BADCOMP_STATUS
  ICAL_3_14_NOCAP_STATUS
  ICAL_3_15_INVCOMMAND
  ICAL_4_0_BUSY_STATUS
  ICAL_4_1_STORE_ACCESS_DENIED
  ICAL_4_2_STORE_FAILED
  ICAL_4_3_STORE_NOT_FOUND
  ICAL_5_0_MAYBE_STATUS
  ICAL_5_1_UNAVAIL_STATUS
  ICAL_5_2_NOSERVICE_STATUS
  ICAL_5_3_NOSCHED_STATUS
  ICAL_6_1_CONTAINER_NOT_FOUND
  ICAL_9_0_UNRECOGNIZED_COMMAND
>;

constant icalrestriction_kind is export := uint32;
our enum icalrestriction_kindEnum is export (
  ICAL_RESTRICTION_NONE         => 0,
  'ICAL_RESTRICTION_ZERO',
  'ICAL_RESTRICTION_ONE',
  'ICAL_RESTRICTION_ZEROPLUS',
  'ICAL_RESTRICTION_ONEPLUS',
  'ICAL_RESTRICTION_ZEROORONE',
  'ICAL_RESTRICTION_ONEEXCLUSIVE',
  'ICAL_RESTRICTION_ONEMUTUAL',
  'ICAL_RESTRICTION_UNKNOWN'
);

constant icalset_kind is export := uint32;
our enum icalset_kindEnum is export <
  ICAL_FILE_SET
  ICAL_DIR_SET
  ICAL_BDB_SET
>;

constant icalvalue_kind is export := uint32;
our enum icalvalue_kindEnum is export (
  ICAL_ANY_VALUE            => 5000,
  ICAL_ACTION_VALUE         => 5027,
  ICAL_ATTACH_VALUE         => 5003,
  ICAL_BINARY_VALUE         => 5011,
  ICAL_BOOLEAN_VALUE        => 5021,
  ICAL_BUSYTYPE_VALUE       => 5032,
  ICAL_CALADDRESS_VALUE     => 5023,
  ICAL_CARLEVEL_VALUE       => 5016,
  ICAL_CLASS_VALUE          => 5019,
  ICAL_CMD_VALUE            => 5010,
  ICAL_DATE_VALUE           => 5002,
  ICAL_DATETIME_VALUE       => 5028,
  ICAL_DATETIMEDATE_VALUE   => 5036,
  ICAL_DATETIMEPERIOD_VALUE => 5015,
  ICAL_DURATION_VALUE       => 5020,
  ICAL_FLOAT_VALUE          => 5013,
  ICAL_GEO_VALUE            => 5004,
  ICAL_INTEGER_VALUE        => 5017,
  ICAL_METHOD_VALUE         => 5030,
  ICAL_PERIOD_VALUE         => 5014,
  ICAL_POLLCOMPLETION_VALUE => 5034,
  ICAL_POLLMODE_VALUE       => 5033,
  ICAL_QUERY_VALUE          => 5001,
  ICAL_QUERYLEVEL_VALUE     => 5012,
  ICAL_RECUR_VALUE          => 5026,
  ICAL_REQUESTSTATUS_VALUE  => 5009,
  ICAL_STATUS_VALUE         => 5005,
  ICAL_STRING_VALUE         => 5007,
  ICAL_TASKMODE_VALUE       => 5035,
  ICAL_TEXT_VALUE           => 5008,
  ICAL_TRANSP_VALUE         => 5006,
  ICAL_TRIGGER_VALUE        => 5024,
  ICAL_URI_VALUE            => 5018,
  ICAL_UTCOFFSET_VALUE      => 5029,
  ICAL_X_VALUE              => 5022,
  ICAL_XLICCLASS_VALUE      => 5025,
  ICAL_NO_VALUE             => 5031
);

constant icalrecurrence_array_max_values is export := uint32;
our enum icalrecurrence_array_max_valuesEnum is export (
  ICAL_RECURRENCE_ARRAY_MAX      => 0x7f7f,
  ICAL_RECURRENCE_ARRAY_MAX_BYTE => 0x7f
);

constant sspm_major_type is export := uint32;
our enum sspm_major_typeEnum is export <
  SSPM_NO_MAJOR_TYPE
  SSPM_TEXT_MAJOR_TYPE
  SSPM_IMAGE_MAJOR_TYPE
  SSPM_AUDIO_MAJOR_TYPE
  SSPM_VIDEO_MAJOR_TYPE
  SSPM_APPLICATION_MAJOR_TYPE
  SSPM_MULTIPART_MAJOR_TYPE
  SSPM_MESSAGE_MAJOR_TYPE
  SSPM_UNKNOWN_MAJOR_TYPE
>;

constant sspm_minor_type is export := uint32;
our enum sspm_minor_typeEnum is export <
  SSPM_NO_MINOR_TYPE
  SSPM_ANY_MINOR_TYPE
  SSPM_PLAIN_MINOR_TYPE
  SSPM_RFC822_MINOR_TYPE
  SSPM_DIGEST_MINOR_TYPE
  SSPM_CALENDAR_MINOR_TYPE
  SSPM_MIXED_MINOR_TYPE
  SSPM_RELATED_MINOR_TYPE
  SSPM_ALTERNATIVE_MINOR_TYPE
  SSPM_PARALLEL_MINOR_TYPE
  SSPM_UNKNOWN_MINOR_TYPE
>;

constant sspm_encoding is export := uint32;
our enum sspm_encodingEnum is export <
  SSPM_NO_ENCODING
  SSPM_QUOTED_PRINTABLE_ENCODING
  SSPM_8BIT_ENCODING
  SSPM_7BIT_ENCODING
  SSPM_BINARY_ENCODING
  SSPM_BASE64_ENCODING
  SSPM_UNKNOWN_ENCODING
>;

constant sspm_error is export := uint32;
our enum sspm_errorEnum is export <
  SSPM_NO_ERROR
  SSPM_UNEXPECTED_BOUNDARY_ERROR
  SSPM_WRONG_BOUNDARY_ERROR
  SSPM_NO_BOUNDARY_ERROR
  SSPM_NO_HEADER_ERROR
  SSPM_MALFORMED_HEADER_ERROR
>;

# Enums that are dependent on previous definitions.

constant icalgaugecompare is export := uint32;
our enum icalgaugecompareEnum is export (
  ICALGAUGECOMPARE_EQUAL        =>        ICAL_XLICCOMPARETYPE_EQUAL,
  ICALGAUGECOMPARE_LESS         =>         ICAL_XLICCOMPARETYPE_LESS,
  ICALGAUGECOMPARE_LESSEQUAL    =>    ICAL_XLICCOMPARETYPE_LESSEQUAL,
  ICALGAUGECOMPARE_GREATER      =>      ICAL_XLICCOMPARETYPE_GREATER,
  ICALGAUGECOMPARE_GREATEREQUAL => ICAL_XLICCOMPARETYPE_GREATEREQUAL,
  ICALGAUGECOMPARE_NOTEQUAL     =>     ICAL_XLICCOMPARETYPE_NOTEQUAL,
  ICALGAUGECOMPARE_REGEX        =>        ICAL_XLICCOMPARETYPE_REGEX,
  ICALGAUGECOMPARE_ISNULL       =>       ICAL_XLICCOMPARETYPE_ISNULL,
  ICALGAUGECOMPARE_ISNOTNULL    =>    ICAL_XLICCOMPARETYPE_ISNOTNULL,
  ICALGAUGECOMPARE_NONE         =>                                 0
);

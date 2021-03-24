use v6.c;

use NativeCall;

use ICal::Raw::Definitions;
use ICal::Raw::Enums;

unit package ICal::Raw::Cluster;

### /usr/include/libical/icalcluster.h

sub icalcluster_add_component (icalcluster $cluster, icalcomponent $child)
  returns icalerrorenum
  is native(ical)
  is export
{ * }

sub icalcluster_commit (icalcluster $cluster)
  is native(ical)
  is export
{ * }

sub icalcluster_count_components (icalcluster $cluster, icalcomponent_kind $kind)
  returns gint
  is native(ical)
  is export
{ * }

sub icalcluster_free (icalcluster $cluster)
  is native(ical)
  is export
{ * }

sub icalcluster_get_component (icalcluster $cluster)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcluster_get_current_component (icalcluster $cluster)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcluster_get_first_component (icalcluster $cluster)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcluster_get_next_component (icalcluster $cluster)
  returns icalcomponent
  is native(ical)
  is export
{ * }

sub icalcluster_is_changed (icalcluster $cluster)
  returns gint
  is native(ical)
  is export
{ * }

sub icalcluster_key (icalcluster $cluster)
  returns Str
  is native(ical)
  is export
{ * }

sub icalcluster_mark (icalcluster $cluster)
  is native(ical)
  is export
{ * }

sub icalcluster_new (Str $key, icalcomponent $data)
  returns icalcluster
  is native(ical)
  is export
{ * }

sub icalcluster_new_clone (icalcluster $cluster)
  returns icalcluster
  is native(ical)
  is export
{ * }

sub icalcluster_remove_component (icalcluster $cluster, icalcomponent $child)
  returns icalerrorenum
  is native(ical)
  is export
{ * }

use v6;

use ICal::Raw::Types;

use ICal::Component;
use ICal::Property;
use ICal::Timezone;
use ICal::DerivedProperty;
use ICal::DerivedParameter;

sub MAIN {
  my ($atime, $rtime) = (
    #icaltimetype.new(DateTime.now, timezone => 'America/New_York'),
    icaltimetype.new(DateTime.now),
    icalperiodtype.new
  );
  #$rtime.start = icaltimetype.new($atime, timezone => 'America/New_York');
  $rtime.start = $atime;
  $rtime.end = $rtime.start;
  $rtime.end.hour++;

  my $calendar = ICal::Component.new-from-parts(
    ICAL_VCALENDAR_COMPONENT,
    ICal::Property::Version.new('v2.0'),
    ICal::Property::ProdID('-//RDU Software//NONSGML HandCal//EN'),
    ICal::Component.new-from-parts(
      ICAL_VEVENT_COMPONENT,
      ICal::Property::DTStamp.new($atime),
      ICal::Property::UID.new('guid-1.host.com'),
      ICal::Property::Organizer.new(
        'mailto:mrbig@host.com',
        ICal::Parameter::Role.new(ICAL_ROLE_CHAIR)
      ),
      ICal::Property::Attendee.new(
        'mailto:employee-A@host.com',
        ICal::Parameter::Role.new(ICAL_ROLE_REQPARTICIPANT),
        ICal::Parameter::RSVP.new(ICAL_RSVP_TRUE),
        ICal::Parameter::CUType.new(ICAL_CUTYPE_GROUP),
      ),
      ICal::Property::Description.new('Project XYZ Review Meeting'),
      ICal::Property::Categories.new('MEETING'),
      ICal::Property::Class.new(ICAL_CLASS_PUBLIC),
      ICal::Property::Created.new($atime),
      ICal::Property::Summary.new('XYZ Project Review'),
      # Timezone was 'US-Eastern'
      # ICal::Property::DateTimeStart.new($atime, timezone => 'America/New_York'),
      # ICal::Property::DateTimeEnd.new($atime, timezone => 'America/New_York'),
      ICal::Property::DTStart.new($atime),
      ICal::Property::DTEnd.new($atime),
      ICal::Property::Location.new('1CP Conference Room 4350')
    )
  );

  say $calendar.as-ical-string;
}


sub do-something (|) { }

sub find-sub-components($comp) {
  do-something($_) for $comp.get-components(ICAL_ANY_COMPONENT);
}

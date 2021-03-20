use v6;

use ICal::Raw::Types;

use ICal::Component;
use ICal::Property;
use ICal::Timezone;

sub MAIN {
  my $utc = (ICal::TimeZone.utc-timezone, icalperiodtype.new);
  my ($atime, $rtime) = icaltimetype xx 2;
  $rtime.start = DateTime.now.utc;
  $rtime.end.hour++;

  my $calendar = ICal::Component.new-from-parts(
    ICAL_VCALENDAR_COMPONENT,
    ICal::Property::Version.new('v2.0'),
    ICal::Property::ProdID('-//RDU Software//NONSGML HandCal//EN'),
    ICal::Component.new-from-parts(
      ICAL_VEVENT_COMPONENT,
      ICal::Property::DateTimeStamp($atime),
      ICal::Property::UID.new('guid-1.host.com'),
      ICal::Property::Organizer.new(
        'mailto:mrbig@host.com',
        ICal::Parameter::Role.new(ICAL_ROLE_CHAIR)
      ),
      ICal::Property::Attendee(
        'mailto:employee-A@host.com',
        ICal::Parameter::Role.new(ICAL_ROLE_REQPARTICIPANT),
        ICal::Parameter::RSVP.new(1),
        ICal::Parameter::CUType.new(ICAL_CUTYPE_GROUP),
      ),
      ICal::Property::Description.new('Project XYZ Review Meeting'),
      ICal::Property::Categories.new('MEETING'),
      ICal::Property::Class.new(ICAL_CLASS_PUBLIC),
      ICal::Property::Created.new($atime),
      ICal::Property::Summary.new('XYZ Project Review'),
      ICal::Property::DateTimeStart.new($atime, timezone => 'US-Eastern'),
      ICal::Property::DateTimeEnd.new($atime, timezone => 'US-Eastern'),
      ICal::Property::Location.new('1CP Conference Room 4350'),
    )
  );

  say ~$calendar;
}

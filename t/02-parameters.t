use v6;
use Test;

use ICal::Raw::Types;

use ICal::Property::Comment;
use ICal::Parameter::CN;
use ICal::Parameter::Role;
use ICal::Parameter::PartStat;

sub getReqParticipants ($_) {
  ICal::Parmeter::Role.new(
    .get-first-parameter(ICAL_ROLE_PARAMETER, :raw)
  ).get == ICAL_ROLE_REQPARTICIPANT.Int
}

sub get-required-attendees ($event) {
   ok $event,                            'Event is defined';
   is $event.isa, ICAL_VEVENT_COMPONENT, 'Event is an event component';
   
   $event.properties(ICAL_ATTENDEE_PROPERTY).grep(&getReqParticipants)
                                            .map({ 
                                              diag "Required-Attendee: { $_ }"
                                            })
}

sub update-attendees ($event) {
  $event.properties(ICAL_ATTENDEE_PROPERTY).map({
    if .get-first_parameter(ICAL_PARTSTAT_PARAMETER, :raw) -> $param is copy {
      $param = ICal::Parameter::PartStat.new($param);
      if $param.get == ICAL_PARTSTAT_NEEDSACTION.Int {
        $param.remove-parameter-by-kind(ICAL_PARTSTAT_PARAMETER);
        $param.free;
        .add-parameter( 
          ICal::Parameter::PartStat.new(
            ICAL_PARTSTAT_TENTATIVE
          )
        ); 
      }  
    } else {
      .add-parameter( 
        ICal::Parameter::PartStat.new(
          ICAL_PARTSTAT_TENTATIVE
        )
      ); 
    }
  });
}

sub test-properties {
  my $prop = ICal::Property::Comment.new(
    'Another Comment',
    ICal::Parameter::CN.new('A Common Name 1'),
    ICal::Parameter::CN.new('A Common Name 2'),
    ICal::Parameter::CN.new('A Common Name 3'),
    ICal::Parameter::CN.new('A Common Name 4')
  );
    
  diag "Prop parameter: $_" for $prop.get-parameters[];
  diag "Prop value: { $prop }";
  diag "As ICal Str: { $prop.as-ical-string-r }";
  
  my $clone = $prop.clone;
  my $value = $clone.value;
  diag "Value: { $value }";
  
  # Segfaults.
  #.free for $clone, $prop
}

test-properties;
  
   
    

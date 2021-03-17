use v6.c;

use ICal::Raw::Types;
use ICal::Raw::Component;

use ICal::Property;

class ICal::Component::Agenda       { ... }
class ICal::Component::Alarm        { ... }
class ICal::Component::Availability { ... }
class ICal::Component::Iter         { ... }
class ICal::Component::Calendar     { ... }
class ICal::Component::Event        { ... }
class ICal::Component::FreeBusy     { ... }
class ICal::Component::Journal      { ... }
class ICal::Component::Patch        { ... }
class ICal::Component::Query        { ... }
class ICal::Component::Timezone     { ... }
class ICal::Component::Todo         { ... }
class ICal::Component::X            { ... }
class ICal::Component::XDaylight    { ... }
class ICal::Component::XStandard    { ... }

class ICal::Component {
  has icalcomponent $!icc;

  submethod BUILD ( :$component ) {
    self.setICalComponent($component) if $component;
  }

  method setICalComponent (icalcomponent $_) {
    $!icc = $_;
  }

  multi method new (icalcomponent $component) {
    $component ?? self.bless( :$component ) !! Nil;
  }
  multi method new (Int() $kind) {
    my icalcomponent_kind $k         = $kind;
    my                    $component = icalcomponent_new($k);

    $component ?? self.bless( :$component ) !! Nil;
  }

  method new_from_parts(*@parts) {
    my $c = self.new;
    @parts = @parts.map({
      LABEL: {
        unless $_ ~~ icalcomponent {
          when ICal::Component        { .icalcomponent; last LABEL }
          when .^can('icalcomponent') { .icalcomponent; last LABEL }
        }
        unless $_ ~~ icalproperty {
          when ICal::Property         { .icalproperty }
          when .^can('icalproperty')  { .icalproperty }
        }
      }
      die "All parameters passed to .new_crom_components must contain{
           '' } IComponent or IProperty-compatible elements!"
      unless $_ ~~ (icalcomponent, icalproperty).any;
    });
    for @parts {
        when icalproperty  { self.add_property($_)  }
        when icalcomponent { self.add_component($_) }
    }
    
    $c;
  }

  method new_clone (icalcomponent() $c) {
    my $component = icalcomponent_new_clone($!icc, $c);

    $component ?? self.bless( :$component ) !! Nil;
  }

  method new_from_string (Str() $str, :$raw = False) {
    my $component = icalcomponent_new_from_string($!icc, $str);

    $component ??
      ( $raw ?? $component !! self.bless( :$component ) )
      !!
      Nil;
  }

  method new_vagenda ($raw = False)  {
    my $component = icalcomponent_new_vagenda();

    $component ??
      ( $raw ?? $component !! ICal::Component::Agenda.new($component) )
      !!
      Nil
  }

  method new_valarm (:$raw = False) {
    my $component = icalcomponent_new_valarm();

    $component ??
      ( $raw ?? $component !! ICal::Component::Alarm.new($component) )
      !!
      Nil
  }

  method new_vavailability (:$raw = False) {
    my $c = icalcomponent_new_vavailability();

    $c ??
      ( $raw ?? $c !! ICal::Component::Availability.new($c) )
      !!
      Nil
  }

  method new_vcalendar (:$raw = False) {
    my $c = icalcomponent_new_vcalendar();

    $c ??
      ( $raw ?? $c !! ICal::Component::Calendar.new($c) )
      !!
      Nil;
  }

  method new_vevent (:$raw = False) {
    my $c = icalcomponent_new_vevent();

    $c ??
      ( $raw ?? $c !! ICal::Component::Event.new($c) )
      !!
      Nil;
  }

  method new_vfreebusy (:$raw = False) {
    my $c = icalcomponent_new_vfreebusy();

    $c ??
      ( $raw ?? $c !! ICal::Component::FreeBusy.new($c) )
      !!
      Nil;
  }

  method new_vjournal (:$raw = False) {
    my $c = icalcomponent_new_vjournal();

    $c ??
      ( $raw ?? $c !! ICal::Component::Journal.new($c) )
      !!
      Nil;
  }

  method new_vpatch (:$raw = False) {
    my $c = icalcomponent_new_vpatch();

    $c ??
      ( $raw ?? $c !! ICal::Component::Patch.new($c) )
      !!
      Nil;
  }

  method new_vpoll (:$raw = False) {
    my $c = icalcomponent_new_vpoll();

    $c ??
      ( $raw ?? $c !! ICal::Component::Patch.new($c) )
      !!
      Nil;
  }

  method new_vquery (:$raw = False) {
    my $c = icalcomponent_new_vquery();

    $c ??
      ( $raw ?? $c !! ICal::Component::Query.new($c) )
      !!
      Nil;
  }

  method new_vtimezone (:$raw = False) {
    my $c = icalcomponent_new_vtimezone();

    $c ??
      ( $raw ?? $c !! ICal::Component::Timezone.new($c) )
      !!
      Nil;
  }

  method new_vtodo (:$raw = False) {
    my $c = icalcomponent_new_vtodo();

    $c ??
      ( $raw ?? $c !! ICal::Component::Todo.new($c) )
      !!
      Nil;
  }

  method new_x (Str() $x_name, :$raw = False) {
    my $c = icalcomponent_new_x($x_name);

    $c ??
      ( $raw ?? $c !! ICal::Component::X.new($c) )
      !!
      Nil;
  }

  method new_xavailable {
    icalcomponent_new_xavailable();
  }

  method new_xdaylight {
    icalcomponent_new_xdaylight();
  }

  method new_xpatch {
    icalcomponent_new_xpatch();
  }

  method new_xstandard {
    icalcomponent_new_xstandard();
  }

  method new_xvote {
    icalcomponent_new_xvote();
  }

  method add_component (icalcomponent() $child) {
    icalcomponent_add_component($!icc, $child);
  }

  method add_property (icalproperty() $property) {
    icalcomponent_add_property($!icc, $property);

  }
  method as_ical_string {
    icalcomponent_as_ical_string($!icc);
  }

  method as_ical_string_r {
    icalcomponent_as_ical_string_r($!icc);
  }

  method begin_component (Int() $kind, :$raw = False) {
    my icalcomponent_kind $k  = $kind;
    my                    $ci = icalcomponent_begin_component($!icc, $k);

    $ci ??
      ( $raw ?? $ci !! ICal::Component::Iter.new($ci) )
      !!
      Nil
  }

  method check_restrictions {
    icalcomponent_check_restrictions($!icc);
  }

  method convert_errors {
    icalcomponent_convert_errors($!icc);
  }

  method count_components (Int() $kind) {
    my icalcomponent_kind $k = $kind;

    icalcomponent_count_components($!icc, $k);
  }

  method count_errors {
    icalcomponent_count_errors($!icc);
  }

  method count_properties (Int() $kind) {
    my icalproperty_kind $k = $kind;

    icalcomponent_count_properties($!icc, $k);
  }

  method end_component (Int() $kind, :$raw = False) {
    my icalcomponent_kind $k  = $kind;
    my                    $ci = icalcomponent_end_component($!icc, $k);

    $ci ??
      ( $raw ?? $ci !! ICal::Component::Iter.new($ci) )
      !!
      Nil
  }

  method free {
    icalcomponent_free($!icc);
  }

  method get_comment {
    icalcomponent_get_comment($!icc);
  }

  method get_current_component (:$raw = False) {
    my $c = icalcomponent_get_current_component($!icc);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method get_current_property (:$raw = False) {
    my $p = icalcomponent_get_current_property($!icc);

    $p ??
      ( $raw ?? $p !! ICal::Property.new($p) )
      !!
      Nil;
  }

  method get_description {
    icalcomponent_get_description($!icc);
  }

  method get_dtend {
    icalcomponent_get_dtend($!icc);
  }

  method get_dtstamp {
    icalcomponent_get_dtstamp($!icc);
  }

  method get_dtstart {
    icalcomponent_get_dtstart($!icc);
  }

  method get_due {
    icalcomponent_get_due($!icc);
  }

  method get_duration {
    icalcomponent_get_duration($!icc);
  }

  method get_first_component (Int() $kind, :$raw = False) {
    my icalcomponent_kind $k = $kind;
    my                    $c = icalcomponent_get_first_component($!icc, $kind);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method get_first_property (Int() $kind, :$raw = False) {
    my icalproperty_kind $k = $kind;
    my                   $p = icalcomponent_get_first_property($!icc, $kind);

    $p ??
      ( $raw ?? $p !! ICal::Property.new($p) )
      !!
      Nil;
  }

  method get_first_real_component (:$raw = False) {
    my $c = icalcomponent_get_first_real_component($!icc);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method get_inner (:$raw = False) {
    my $c = icalcomponent_get_inner($!icc);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method get_location {
    icalcomponent_get_location($!icc);
  }

  method get_method {
    icalproperty_methodEnum( icalcomponent_get_method($!icc) );
  }

  method get_next_component (Int() $kind, :$raw = False) {
    my icalcomponent_kind $k = $kind;
    my                    $c = icalcomponent_get_next_component($!icc, $k);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method get_next_property (Int() $kind, :$raw = False) {
    my icalproperty_kind $k = $kind;
    my                   $p = icalcomponent_get_next_property($!icc, $kind);

    $p ??
      ( $raw ?? $p !! ICal::Property.new($p) )
      !!
      Nil;
  }

  # Internal?
  # method get_parent {
  #   icalcomponent_get_parent($!icc);
  # }

  method get_recurrenceid {
    icalcomponent_get_recurrenceid($!icc);
  }

  method get_relcalid {
    icalcomponent_get_relcalid($!icc);
  }

  method get_sequence {
    icalcomponent_get_sequence($!icc);
  }

  method get_span {
    icalcomponent_get_span($!icc);
  }

  method get_status {
    icalproperty_statusEnum( icalcomponent_get_status($!icc) );
  }

  method get_summary {
    icalcomponent_get_summary($!icc);
  }

  method get_uid {
    icalcomponent_get_uid($!icc);
  }

  method is_valid {
   so icalcomponent_is_valid($!icc);
  }

  method isa {
    icalcomponent_kindEnum( icalcomponent_isa($!icc) );
  }

  method isa_component {
    icalcomponent_isa_component($!icc.p);
  }

  method kind_is_valid {
    so icalcomponent_kind_is_valid($!icc);
  }

  method kind_to_string (ICal::Component:U: Int() $kind) {
    my icalcomponent_kind $k = $kind;

    icalcomponent_kind_to_string($k);
  }

  method merge_component (icalcomponent() $comp_to_merge) {
    icalcomponent_merge_component($!icc, $comp_to_merge);
  }

  method normalize {
    icalcomponent_normalize($!icc);
  }

  method remove_component (icalcomponent() $child) {
    icalcomponent_remove_component($!icc, $child);
  }

  method remove_property (icalproperty() $property) {
    icalcomponent_remove_property($!icc, $property);
  }

  method set_comment (Str() $v) {
    icalcomponent_set_comment($!icc, $v);
  }

  method set_description (Str() $v) {
    icalcomponent_set_description($!icc, $v);
  }

  method set_dtend (icaltimetype $v) {
    icalcomponent_set_dtend($!icc, $v);
  }

  method set_dtstamp (icaltimetype $v) {
    icalcomponent_set_dtstamp($!icc, $v);
  }

  method set_dtstart (icaltimetype $v) {
    icalcomponent_set_dtstart($!icc, $v);
  }

  method set_due (icaltimetype $v) {
    icalcomponent_set_due($!icc, $v);
  }

  method set_duration (icaldurationtype $v) {
    icalcomponent_set_duration($!icc, $v);
  }

  method set_location (Str() $v) {
    icalcomponent_set_location($!icc, $v);
  }

  method set_method (Int() $method) {
    my icalproperty_method $m = $method;

    icalcomponent_set_method($!icc, $m);
  }

  # Internal?
  # method set_parent (icalcomponent() $parent) {
  #   icalcomponent_set_parent($!icc, $parent);
  # }

  method set_recurrenceid (icaltimetype $v) {
    icalcomponent_set_recurrenceid($!icc, $v);
  }

  method set_relcalid (Str() $v) {
    icalcomponent_set_relcalid($!icc, $v);
  }

  method set_sequence (Int() $v) {
    my int32 $vv = $v;

    icalcomponent_set_sequence($!icc, $v);
  }

  method set_status (Int() $v) {
    my icalproperty_status $vv = $v;

    icalcomponent_set_status($!icc, $v);
  }

  method set_summary (Str() $v) {
    icalcomponent_set_summary($!icc, $v);
  }

  method set_uid (Str() $v) {
    icalcomponent_set_uid($!icc, $v);
  }

  method string_to_kind (ICal::Component:U: Str() $str) {
    icalcomponent_kindEnum( icalcomponent_string_to_kind($str) );
  }

  method strip_errors {
    icalcomponent_strip_errors($!icc);
  }

  # method vanew (, ...) {
  #   icalcomponent_vanew($!icc);
  # }

}

class ICal::Component::Agenda is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::Alarm is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::Availability is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::Calendar is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::Event is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::FreeBusy is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::Journal is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::Patch is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}


class ICal::Component::Query is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::Timezone is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::Todo is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::X is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::XDaylight is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::XStandard is ICal::Component {
  submethod BUILD ( :$new-component ) {
    self.setICalComponent($new-component) if $new-component;
  }
}

class ICal::Component::Iter {
  has icalcompiter $!ci;

  submethod BUILD (:$iter) {
    $!ci = $iter;
  }

  method new ($iter) {
    $iter ?? self.bless( :$iter ) !! Nil;
  }

  method deref {
    icalcompiter_deref($!ci);
  }

  method next (:$raw = False) {
    my $c = icalcompiter_next($!ci);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method prior (:$raw = False) {
    my $c = icalcompiter_prior($!ci);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

}
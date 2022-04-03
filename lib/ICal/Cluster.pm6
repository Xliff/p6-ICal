use v6;

use ICal::Raw::Types;
use ICal::Raw::Cluster;

class ICal::Cluster {
  has icalcluster $!icc;

  submethod BUILD ( :$cluster ) {
    $!icc = $cluster
  }

  method new (Str() $key, icalcomponent() $data) {
    my $cluster = icalcluster_new($key, $data);

    $cluster ?? self.bless( :$cluster ) !! Nil;
  }

  method new_clone (icalcluster() $cluster) {
    $cluster = icalcluster_new_clone($!icc, $cluster);

    $cluster ?? self.bless( :$cluster ) !! Nil;
  }

  method add_component (icalcomponent $child) {
    icalerrorenumEnum( icalcluster_add_component($!icc, $child) );
  }

  method commit {
    icalcluster_commit($!icc);
  }

  method count_components (Int() $kind) {
    my icalcomponent_kind $k = $kind;

    icalcluster_count_components($!icc, $kind);
  }

  method free {
    icalcluster_free($!icc);
  }

  method get_component ( :$raw = False ) {
    my $c = icalcluster_get_component($!icc);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil
  }

  method get_components ( :$raw = False ) {
    state &first = self.^lookup('get_first_component');
    state &next  = self.^lookup('get_next_component');

    get_items(
      self,
      &first,
      &next,
      Int,
      :$raw
    );
  }

  method get_current_component ( :$raw = False ) {
    my $c = icalcluster_get_current_component($!icc);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil
  }

  method get_first_component ( :$raw = False ) {
    my $c = icalcluster_get_first_component($!icc);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil
  }

  method get_next_component ( :$raw = False ) {
    my $c = icalcluster_get_next_component($!icc);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil
  }

  method is_changed {
    say icalcluster_is_changed($!icc);
  }

  method key {
    icalcluster_key($!icc);
  }

  method mark {
    icalcluster_mark($!icc);
  }

  method remove_component (icalcomponent() $child) {
    icalerrorenumEnum( icalcluster_remove_component($!icc, $child) );
  }

}

use v6.c;

use ICal::Raw::Types;
use ICal::Raw::Set;

class ICal::Set {
  has icalset $!is is implementor;

  submethod BUILD ( :$set ) {
    $!is = $set;
  }

  method ICal::Raw::Structs::icalset
  { $!is }

  multi method new (icalset $set) {
    $set ?? self.bless( :$set ) !! Nil;
  }
  multi method new (Str() $dsn, Pointer $options) {
    my $set = icalset_new($dsn, $options);

    $set ?? self.bless( :$set ) !! Nil;
  }

  method new_dir (Str() $path) {
    my $set = icalset_new_dir($!is, $path);

    $set ?? self.bless( :$set ) !! Nil;
  }

  method new_file (Str() $path) {
    my $set = icalset_new_file($!is, $path);

    $set ?? self.bless( :$set ) !! Nil;
  }

  method new_file_reader (Str() $path) {
    my $set = icalset_new_file_reader($!is, $path);

    $set ?? self.bless( :$set ) !! Nil;
  }

  method new_file_writer (Str() $path) {
    my $set = icalset_new_file_writer($!is, $path);

    $set ?? self.bless( :$set ) !! Nil;
  }

  method add_component (icalcomponent() $comp) {
    icalerrorenumEnum( icalset_add_component($!is, $comp) );
  }

  method begin_component (
    Int()       $kind,
    icalgauge() $gauge,
    Str()       $tzid
  ) {
    my icalcomponent_kind $k = $kind;

    icalset_begin_component($!is, $k, $gauge, $tzid);
  }

  method commit {
    icalerrorenumEnum( icalset_commit($!is) );
  }

  method count_components (Int() $kind) {
    my icalcomponent_kind $k = $kind;

    icalset_count_components($!is, $k);
  }

  method fetch (Str() $uid, :$raw = False) {
    my $c = icalset_fetch($!is, $uid);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method fetch_match (icalcomponent() $c, :$raw = False) {
    my $c = icalset_fetch_match($!is, $c);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method free {
    icalset_free($!is);
  }

  method get_current_component (:$raw = False) {
    my $c = icalset_get_current_component($!is);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method get_first_component (:$raw = False) {
    my $c = icalset_get_first_component($!is);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method get_next_component (:$raw = False) {
    my $c = icalset_get_next_component($!is);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method has_uid (Str $uid) {
    icalset_has_uid($!is, $uid);
  }

  method mark {
    icalset_mark($!is);
  }

  method modify (icalcomponent() $oldc, icalcomponent() $newc) {
    icalerrorenumEnum( icalset_modify($!is, $oldc, $newc) );
  }

  method path {
    icalset_path($!is);
  }

  method remove_component (icalcomponent() $comp) {
    icalerrorenumEnum( icalset_remove_component($!is, $comp) );
  }

  method select (icalgauge() $gauge) {
    icalerrorenumEnum( icalset_select($!is, $gauge) );
  }

}

class ICal::Set::Iter {
  has icalsetiter $!isi is implementor;

  submethod BUILD (:$iter) {
    $!isi = $iter;
  }

  method ICal::Raw::Definitions::icalsetiter
  { $!isi }

  method new (icalsetiter $iter) {
    $iter ?? self.bless( :$iter ) !! Nil;
  }

  method deref (:$raw = False) {
    my $c = icalsetiter_deref($!isi);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil
  }

  method next (:$raw = False)  {
    my $c = icalsetiter_next($!isi);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil
  }

  method prior (:$raw = False)  {
    my $c = icalsetiter_prior($!isi);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil
  }

  method to_next (icalsetiter() $i, :$raw = False)  {
    my $c = icalsetiter_to_next($!isi, $i);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil
  }

  method to_prior (icalsetiter() $i, :$raw = False)  {
    my $c = icalsetiter_to_prior($!isi, $i);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil
  }
}

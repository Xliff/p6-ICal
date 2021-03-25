use v6.c;

use Method::Also;

use NativeCall;

use ICal::Raw::Types;
use ICal::Raw::Set;

class ICal::Set {
  has icalset $!is is implementor;

  submethod BUILD ( :$set ) {
    $!is = $set;
  }

  method ICal::Raw::Structs::icalset
    is also<icalset>
  { $!is }

  multi method new (icalset $set) {
    $set ?? self.bless( :$set ) !! Nil;
  }
  multi method new (Str() $dsn, Pointer $options) {
    my $set = icalset_new($dsn, $options);

    $set ?? self.bless( :$set ) !! Nil;
  }

  method new_dir (Str() $path) is also<new-dir> {
    my $set = icalset_new_dir($!is, $path);

    $set ?? self.bless( :$set ) !! Nil;
  }

  method new_file (Str() $path) is also<new-file> {
    my $set = icalset_new_file($!is, $path);

    $set ?? self.bless( :$set ) !! Nil;
  }

  method new_file_reader (Str() $path) is also<new-file-reader> {
    my $set = icalset_new_file_reader($!is, $path);

    $set ?? self.bless( :$set ) !! Nil;
  }

  method new_file_writer (Str() $path) is also<new-file-writer> {
    my $set = icalset_new_file_writer($!is, $path);

    $set ?? self.bless( :$set ) !! Nil;
  }

  method add_component (icalcomponent() $comp) is also<add-component> {
    icalerrorenumEnum( icalset_add_component($!is, $comp) );
  }

  method begin_component (
    Int()       $kind,
    icalgauge() $gauge,
    Str()       $tzid
  )
    is also<begin-component>
  {
    my icalcomponent_kind $k = $kind;

    icalset_begin_component($!is, $k, $gauge, $tzid);
  }

  method commit {
    icalerrorenumEnum( icalset_commit($!is) );
  }

  method count_components (Int() $kind) is also<count-components> {
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

  method fetch_match (icalcomponent() $c2, :$raw = False)
    is also<fetch-match>
  {
    my $c = icalset_fetch_match($!is, $c2);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method free {
    icalset_free($!is);
  }

  method get_current_component (:$raw = False)
    is also<
      get-current-component
      current-component
    >
  {
    my $c = icalset_get_current_component($!is);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method get_components (:$raw = False)
    is also<
      get-components
      components
    >
  {
    my &first = self.^lookup('get_first_component');
    my &next  = self.^lookup('get_next_component');

    get_items(
      self,
      &first,
      &next,
      Int,
      :$raw
    );
  }

  method get_first_component (:$raw = False)
    is also<
      get-first-component
      first-component
      first_component
    >
  {
    my $c = icalset_get_first_component($!is);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method get_next_component (:$raw = False)
    is also<
      get-next-component
      next-component
      next_component
    >
  {
    my $c = icalset_get_next_component($!is);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

  method has_uid (Str() $uid) is also<has-uid> {
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

  method remove_component (icalcomponent() $comp) is also<remove-component> {
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
    is also<icalsetiter>
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

  method to_next (icalsetiter() $i, :$raw = False)  is also<to-next> {
    my $c = icalsetiter_to_next($!isi, $i);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil
  }

  method to_prior (icalsetiter() $i, :$raw = False)  is also<to-prior> {
    my $c = icalsetiter_to_prior($!isi, $i);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil
  }
}

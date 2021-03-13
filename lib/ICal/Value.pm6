use v6.c;

use ICal::Raw::Types;
use ICal::Raw::Value;

class ICal::Value {
  has icalvalue $!iv;

  submethod BUILD ( :$value ) {
    $!iv = $value;
  }

  method new (Int() $kind) {
    my icalvalue_kind $k     = $kind;
    my                $value = icalvalue_new($k);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method new_clone (icalvalue() $v) {
    my $value = icalvalue_new_clone($v);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method new_from_string (Int() $kind, Str() $str) {
    my icalvalue_kind $k = $kind;
    my                 $value = icalvalue_new_from_string($!iv, $kind, $str);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method ICal::Raw::Definitions::icalvalue
  { $!iv }

  method as_ical_string {
    icalvalue_as_ical_string($!iv);
  }

  method as_ical_string_r {
    icalvalue_as_ical_string_r($!iv);
  }

  method compare (icalvalue() $b) {
    so icalvalue_compare($!iv, $b);
  }

  method decode_ical_string (
    Str() $szDecText,
    Int() $nMaxBufferLen = $szDecText.chars
  ) {
    my uint32 $n = $nMaxBufferLen;

    icalvalue_decode_ical_string($!iv, $szDecText, $n);
  }

  method encode_ical_string (
    Str() $szEncText,
    Int() $nMaxBufferLen = $szEncText.chars
  ) {
    my uint32 $n = $nMaxBufferLen;

    icalvalue_encode_ical_string($!iv, $szEncText, $n);
  }

  method free {
    icalvalue_free($!iv);
  }

  method is_valid {
    so icalvalue_is_valid($!iv);
  }

  method isa {
    icalvalue_kindEnum( icalvalue_isa($!iv) );
  }

  method isa_value (ICal::Value:U: ) {
    so icalvalue_isa_value();
  }

  method kind_is_valid (
    ICal::Value:U:
    Int()               $kind
  ) {
    my icalvalue_kind $k = $kind;

    so icalvalue_kind_is_valid($k);
  }

  method kind_to_string (
    ICal::Value:U:
    Int()               $kind
  ) {
    my icalvalue_kind $k = $kind;

    icalvalue_kind_to_string($k);
  }
  
  method string_to_kind (Str() $str) {
    icalvalue_string_to_kind($str);
  }

}

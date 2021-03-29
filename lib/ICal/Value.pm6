use v6.c;

use Method::Also;

use ICal::Raw::Types;
use ICal::Raw::Value;

our subset ICalValueOrObj is export of Mu
  where icalvalue | ICal::Value;

class ICal::Value {
  has icalvalue $!iv;

  submethod BUILD ( :$value ) {
    $!iv = $value;
  }

  method new ($value is copy) {
    $value = do given $value {
      when .^can('icalvalue') { .icalvalue        }
      when icalvalue          { $_                }
      when .^can('Int')       { .Int; proceed     }
      when Int                { icalvalue_new($_) }
      
      die "Cannot create an ICal::Value from a { .^name }";
    }    
    
    $value ?? self.bless( :$value ) !! Nil;
  }

  method new_clone (icalvalue() $v) is also<new-clone> {
    my $value = icalvalue_new_clone($v);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method new_from_string (Int() $kind, Str() $str) is also<new-from-string> {
    my icalvalue_kind $k = $kind;
    my                 $value = icalvalue_new_from_string($!iv, $kind, $str);

    $value ?? self.bless( :$value ) !! Nil;
  }

  method ICal::Raw::Definitions::icalvalue
    is also<icalvalue>
  { $!iv }

  method as_ical_string 
    is also<
      as-ical-string
      Str
    > 
  {
    icalvalue_as_ical_string($!iv);
  }

  method as_ical_string_r is also<as-ical-string-r> {
    icalvalue_as_ical_string_r($!iv);
  }

  method compare (icalvalue() $b) {
    so icalvalue_compare($!iv, $b);
  }

  method decode_ical_string (
    Str() $szDecText,
    Int() $nMaxBufferLen = $szDecText.chars
  ) 
    is also<decode-ical-string> 
  {
    my uint32 $n = $nMaxBufferLen;

    icalvalue_decode_ical_string($!iv, $szDecText, $n);
  }

  method encode_ical_string (
    Str() $szEncText,
    Int() $nMaxBufferLen = $szEncText.chars
  ) 
    is also<encode-ical-string> 
  {
    my uint32 $n = $nMaxBufferLen;

    icalvalue_encode_ical_string($!iv, $szEncText, $n);
  }

  method free {
    icalvalue_free($!iv);
  }

  method is_valid is also<is-valid> {
    so icalvalue_is_valid($!iv);
  }

  method isa {
    icalvalue_kindEnum( icalvalue_isa($!iv) );
  }

  method isa_value (ICal::Value:U: ) is also<isa-value> {
    so icalvalue_isa_value();
  }

  method kind_is_valid (
    ICal::Value:U:
    Int()               $kind
  ) is also<kind-is-valid> {
    my icalvalue_kind $k = $kind;

    so icalvalue_kind_is_valid($k);
  }

  method kind_to_string (
    ICal::Value:U:
    Int()               $kind
  ) is also<kind-to-string> {
    my icalvalue_kind $k = $kind;

    icalvalue_kind_to_string($k);
  }
  
  method string_to_kind (Str() $str) is also<string-to-kind> {
    icalvalue_string_to_kind($str);
  }

}

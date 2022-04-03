use v6;

use NativeCall;

use ICal::Raw::Types;
use ICal::Raw::Parser;

class ICal::Parser {
  has icalparser $!ip;

  submethod BUILD (:$parser) {
    $!ip = $parser;
  }

  method new {
    my $parser = icalparser_new();

    $parser ?? self.bless( :$parser ) !! Nil;
  }

  method add_line (Str() $str) {
    icalparser_add_line($!ip, $str);
  }

  method clean {
    icalparser_clean($!ip);
  }

  method free {
    icalparser_free($!ip);
  }

  method get_line (&line-gen-func) {
    icalparser_get_line($!ip, &line-gen-func);
  }

  method get_state {
    icalparser_get_state($!ip);
  }

  method parse (&line-gen-func) {
    icalparser_parse($!ip, &line-gen-func);
  }

  method parse_string (ICal::Parser:U: Str() $str) {
    icalparser_parse_string($str);
  }

  method set_gen_data (pointer $data) {
    icalparser_set_gen_data($!ip, $data);
  }

}

sub string-line-generator (CArray[uint8] $out, Int() $buf_size, pointer $d = pointer)
  is export
{
  string_line_generator($out, $buf_size, $d);
}
sub string_line_generator (CArray[uint8] $out, Int() $buf_size, pointer $d = pointer)
  is export
{
  my size_t $b = $buf_size;

  icalparser_string_line_generator($out, $b, $d);
}

use v6;

use NativeCall;
use NativeHelpers::Blob;

use ICal::Raw::Types;
use ICal::Raw::Memory;

use ICal::Roles::StaticClass;

class ICal::Memory does ICal::Roles::StaticClass {

  method add_tmp_buffer (Pointer $buf) {
    icalmemory_add_tmp_buffer($buf);
  }

  method append_char (Str $buf, Str $pos, size_t $buf_size, Str $ch) {
    icalmemory_append_char($buf, $pos, $buf_size, $ch);
  }

  method append_string (Str $buf, Str $pos, size_t $buf_size, Str $string) {
    icalmemory_append_string($buf, $pos, $buf_size, $string);
  }

  method free_buffer (Pointer $buf) {
    icalmemory_free_buffer($buf);
  }

  method free_ring {
    icalmemory_free_ring();
  }

  method new_buffer (size_t $size) {
    my size_t $s = $size;

    icalmemory_new_buffer($s);
  }

  method resize_buffer (Pointer $buf, Int() $size) {
    my size_t $s = $size;

    icalmemory_resize_buffer($buf, $size);
  }

  method strdup (Str $s) {
    icalmemory_strdup($s);
  }

  method tmp_buffer (Int() $size) {
    my size_t $s = $size;

    icalmemory_tmp_buffer($size);
  }

  method tmp_copy (Str $str) {
    icalmemory_tmp_copy($str);
  }

}

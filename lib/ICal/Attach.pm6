use v6;

use NativeCall;

use ICal::Raw::Types;
use ICal::Raw::Attach;

class ICall::Attach {
  has icalattach $!ia is implementor;

  submethod BUILD ( :$attach ) {
    $!ia = $attach;
  }

  method new_from_str (Str() $data) {
    self.new_from_buf($data.encode);
  }
  method new_from_buf (Buf() $data) {
    self.new_from_data( CArray[uint8].new($data) );
  }
  method new_from_data (CArray[uint8] $data) {
    my $attach = icalattach_new_from_data($data, Pointer, Pointer);

    $attach ?? self.bless(:$attach) !! Nil;
  }

  method new_from_url (Str() $url) {
    icalattach_new_from_url($url);
  }

  method get_data (:$raw = True) {
    my $d = icalattach_get_data($!ia);

    $raw ?? $d !! Buf.new($d);
  }

  method get_is_url {
    so icalattach_get_is_url($!ia);
  }

  method get_url {
    icalattach_get_url($!ia);
  }

  method ref {
    icalattach_ref($!ia);
  }

  method unref {
    icalattach_unref($!ia);
  }

}

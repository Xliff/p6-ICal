use v6;

use NativeCall;

use ICal::Raw::Types;

use ICal::Roles::StaticClass;

use ICal::Component;

class ICal::MIME does ICal::Roles::StaticClass {

  method parse (&line-gen-func, $d, :$raw = False) {
    my $c = icalmime_parse(&line-gen-func, $d);

    $c ??
      ( $raw ?? $c !! ICal::Component.new($c) )
      !!
      Nil;
  }

}

sub icalmime_parse (
  &line-gen-func (Str, size_t, Pointer --> str),
  Pointer $data
)
  returns icalcomponent
  is export
  is native(ical)
{ * }

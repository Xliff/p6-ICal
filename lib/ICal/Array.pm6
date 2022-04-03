use v6.c;

use Method::Also;

use NativeCall;  # for size_t

use ICal::Raw::Types;
use ICal::Raw::Array;

class ICal::Array {
  has icalarray $!ia is implementor;

  submethod BUILD ( :$array ) {
    self.setArray($array) if $array;
  }

  method setArray ($_) {
    $!ia = $_;
  }

  method ICal::Raw::Structs::icalarray
    is also<icalarray>
  { $!ia }

  method Array (\T = Pointer) {
    gather for ^$!ia.num_elements {
      take self.element_at($_, type => T);
    }
  }

  multi method new (icalarray $array) {
    $array ?? self.bless( :$array ) !! Nil;
  }
  multi method new (Int() $element_size, Int() $increment_size) {
    my size_t ($e, $i) = ($element_size, $increment_size);
    my        $array   = icalarray_new($!ia, $e, $i);

    $array ?? self.bless( :$array ) !! Nil;
  }

  multi method append (Pointer $element) {
    icalarray_append($!ia, $element);
  }
  multi method append ($_ is copy, :$signed = False, :$double = False) {
    my $appendable;

    {
      when Int {
        my \T := $signed ??
           ( $double ??  int64 !!  int32 ) !!
           ( $double ?? uint64 !! uint32 );
        my $ca = CArray[T].new;
        $ca[0] = $_;
        $appendable = $ca;
      }

      when Num {
        my \T := $double ?? num64 !! num32;
          my $ca = CArray[T].new;
          $ca[0] = $_;
          $appendable = $ca;
      }

      when .REPR eq <CStruct>  {
        #$appendable = Pointer.new.^specialize(.WHAT);
        $appendable = cast(Pointer, $_);

      }

      when Str                        { $appendable = cast(Pointer, $_) }
      when ICal::Roles::Pointers { $appendable = .p                }
      when .REPR eq <CPointer>        { $appendable = cast(Pointer, $_) }
      when Pointer                    { $appendable = $_;               }
    }

    self.append($appendable) if $appendable;
  }

  method copy (:$raw = False) {
    my $copy = icalarray_copy($!ia);

    $copy ??
      ( $raw ?? $copy !! ICal::Array.new($copy) )
      !!
      Nil;
  }

  method element_at (Int() $position, :$type) is also<element-at> {
    my size_t $p  = $position;
    my        $pp = icalarray_element_at($!ia, $position);

    return $pp if $type === Nil || $type === Pointer;

    cast($type, $pp);
  }

  method free {
    icalarray_free($!ia);
  }

  method remove_element_at (Int() $position) is also<remove-element-at> {
    my size_t $p = $position;

    icalarray_remove_element_at($!ia, $p);
  }

  method sort (&compare) {
    icalarray_sort($!ia, &compare);
  }

}

sub returnArray ( $ica is copy, $array, $raw, $T = Str, $O?, :$array-object )
  is export
{
  return Nil unless $ica;
  return $ica if    $array && $raw;

  $ica = $array-object.new($ica);
  return $ica if $array;

  $ica = $ica.Array($T);
  return $ica if $raw;
  $ica.map({ $O.new($_) });
}

use v6.c;

use NativeCall;

unit package ICal::Raw::Subs;

# Cribbed from https://github.com/CurtTilmes/perl6-dbmysql/blob/master/lib/DB/MySQL/Native.pm6
sub malloc         (size_t --> Pointer)                   is export is native { * }
sub realloc        (Pointer, size_t --> Pointer)          is export is native { * }
sub calloc         (size_t, size_t --> Pointer)           is export is native { * }
sub memcpy         (Pointer, Pointer ,size_t --> Pointer) is export is native { * }
sub memset         (Pointer, int32, size_t)               is export is native { * }
sub dup2           (int32, int32 --> int32)               is export is native { * }
sub isatty         (int32 --> int32)                      is export is native { * }

sub native-open    (Str, int32, int32 $m = 0)
  is export
  is symbol('open')
  is native
{ * }

# So as not to collide with the CORE sub.
sub native-close   (int32 --> int32)
  is export
  is symbol('close')
  is native
{ * }

our proto sub free (|) is export { * }
multi sub free (Pointer)                           is export is native { * }

# Cribbed from https://stackoverflow.com/questions/1281686/determine-size-of-dynamically-allocated-memory-in-c
sub malloc_usable_size (Pointer --> size_t)        is export is native { * }

# Implement memcpy_pattern. Take pattern and write pattern.^elem bytes to successive areas in dest.

sub getEndian is export {
  ( $*KERNEL.endian == BigEndian, $*KERNEL.endian == LittleEndian );
}

sub cast($cast-to, $obj) is export {
  nativecast($cast-to, $obj);
}

sub real-resolve-uint64($v) is export {
  $v +& 0xffffffffffffffff;
}

sub p ($p) is export {
  cast(Pointer, $p);
}

# Moved from p6-GStreamer
sub nocr ($s) is export {
  $s.subst("\n", ' ', :g);
}

sub unstable_get_type($name, &sub, $n is rw, $t is rw) is export {
  return $t if ($n // 0) > 0;
  repeat {
    $t = &sub();
    die "{ $name }.get_type could not get stable result"
      if $n++ > 20;
  } until $t == &sub();
  $t;
}

# This should be in CORE!
sub separate (Str() $s, Int() $p) is export {
  die '$p outside of string range!' unless $p ~~ 0 .. $s.chars;
  ( $s.substr(0, $p), $s.substr($p, *) )
}

sub ArrayToCArray(\T, @a) is export {
  my $ca =  CArray[T].new;
  @a = @a.map({
    my $e = $_;
    unless $_ ~~ T {
      die "Cannot add an element of { .^name } to CArray since it is not {
           T.^name }-compatible!"
      unless .can(T.^name);
      $e = ."{ T.^name }"()
    }
    $e;
  });
  $ca[$_] = @a[$_] for ^@a.elems;
  $ca;
}

multi sub CStringArrayToArray(CArray[Str] $sa, Int(Cool) $len) {
  CArrayToArray($sa, $len);
}
multi sub CStringArrayToArray (CArray[Str] $sa) is export {
  CArrayToArray($sa)
}

multi sub CArrayToArray(CArray $ca) is export {
  return Nil unless $ca;
  my ($i, @a) = (0);
  while $ca[$i] {
    @a.push: $ca[$i++];
  }
  @a;
}
multi sub CArrayToArray(CArray $ca, Int(Cool) $len) is export {
  return Nil unless $ca;
  my @a;
  @a[$_] = $ca[$_] for ^$len;
  @a;
}

sub get_flags($t, $s, $j = ', ') is export {
  $t.enums
    .map({ $s +& .value ?? .key !! '' })
    .grep(* ne '')
    .join($j);
}

#| ppr(*@a) - Potential Pointer Return. Handles values, potentially pointers,
#|            that are wrapped in a CArray. If value is a Pointer type AND
#|            a CStruct, then that value will be dereferenced.
sub ppr (*@a) is export {
  @a .= map({
    if $_ ~~ CArray {
      if .[0].defined {
        if .[0].REPR.chars.not {
          .[0]
        } else {
          my $p = .[0];
          $p.defined ?? ( .[0] !~~ Pointer ?? .[0]
                                           !! (
                                               .[0].of.REPR eq 'CStruct'
                                                  ?? .[0].deref
                                                  !! .[0]
                                              )
                        )
                     !! Nil;
        }
      } else {
        Nil;
      }
    }
    else { $_ }
  });
  @a.elems == 1 ?? @a[0] !! @a;
}

sub return-with-all ($v) is export {
  $v[0] ?? ( $v.elems == 1 ?? $v !! $v.skip(1) )
        !! Nil
}

# The assumption here is "Transfer: Full"
sub maybeReturnObject ($oo, $raw, \P, $C? is raw, :$ref = False) is export {
  my $o = $oo;
  return Nil unless $o;

  $o = cast(P, $o);
  return $o if $raw || $C =:= Nil;

  $C.new($o, :$ref);
}

sub subarray ($a, $o) is export {
  my $b = nativecast(Pointer[$a.of], $a);
  nativecast( CArray[$a.of], $b.add($o) );
}

method get_items (
        $invocant,
  Int() $kind,
        &first,
        &next,
        :$raw = False
) is export {
  (class :: does Iterable does Iterator {
    has $!init = False;

    method iterator { self }

    method pull-one {
      my @params = $kind ?? $kind.Array !! ();
      if $!init {
        my $np = $invocant.&first( |@params, :$raw );
        $np ?? $np !! IterationEnd;
      } else {
        return $invocant.&next( |@params, :$raw );
        $!init = True;
      }
    }
  }).new
}

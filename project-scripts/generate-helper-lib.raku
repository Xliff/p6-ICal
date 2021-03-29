use v6;

sub MAIN (
  :$prop-file  = '/usr/include/libical/icalderivedproperty.h',
  :$value-file = '/usr/include/libical/icalderivedvalue.h',
  :$build      = False
) {
  unless $build {\
    qqx{install -d c-helper};
    my rule time-subs {
      'icalproperty' '*icalproperty_new_'(\w+)'(struct icaltimetype v);'
    }
    my rule struct-subs {
      'icalvalue' '*icalvalue_new_'(\w+)'(struct' (\w+) 'v);'
    }

    my $defs = $prop-file.IO.slurp;
    my $found = $defs ~~ m:g/<time-subs>/;
    my @subs;
    for $found[] {
      my $name = .<time-subs>[0];
      @subs.push: qq:to/SUBDEF/;
        icalproperty *icalpropertyhelper_new_{ $name }(struct icaltimetype *v) \{
          return icalproperty_new_{ $name }(*v);
        \}
        SUBDEF
    }

    $defs = $value-file.IO.slurp;
    $found = $defs ~~ m:g/<struct-subs>/;
    for $found[] {
      .gist.say;
      my $name = .<struct-subs>[0];
      @subs.push: qq:to/SUBDEF/;
        icalvalue *icalvaluehelper_new_{ $name }(struct { .<struct-subs>[1] } *v) \{
          return icalvalue_new_{ $name }(*v);
        \}
        SUBDEF
    }

    "c-helper/icalhelper.c".IO.spurt: qq:to/OUT/;
      #include <stdio.h>
      #include "libical/ical.h"
      #include "libical/icalderivedproperty.h"
      #include "libical/icalderivedvalue.h"

      { @subs.join("\n") }
      OUT
  }

  # Now build the damned thing. (Currently Debian-based Linux only)
  my $libs = qqx{pkg-config --libs libical};

  qqx{gcc c-helper/icalhelper.c -fPIC -shared -o c-helper/icalhelper.so $libs};
  qqx{cp c-helper/icalhelper.so resources/lib};
}

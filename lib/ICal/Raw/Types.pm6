use v6;

# New system -- Not working
my %exports;
my @default-symbols = MY::.keys;

sub defSyms is export { @default-symbols }
sub myExports is export { %exports }

module ICal::Raw::Types {
  use ICal::Raw::Definitions;
  use ICal::Raw::Enums;
  use ICal::Raw::Structs;
  use ICal::Raw::Subs;
  use ICal::Roles::Pointers;

  %exports = MY::.pairs.grep({ .key ne @default-symbols.any }).Map;
}

sub EXPORTS() { %exports }

# cw: Old system -- Working
#
# use ICal::Raw::Exports;
#
# need ICal::Raw::Definitions;
# need ICal::Raw::Enums;
# need ICal::Raw::Structs;
# need ICal::Raw::Subs;
# need ICal::Roles::Pointers;
#
# BEGIN {
#   ical-re-export($_) for |@ical-exports;
# }

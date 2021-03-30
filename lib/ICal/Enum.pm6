use v6;

use ICal::Raw::Types;
use ICal::Raw::Enum;

use ICal::Roles::StaticClass;

class ICal::Enum::ReqStat does ICal::Roles::StaticClass {

  method num_to_reqstat (short $major, short $minor) {
    my short ($mj, $mn) = ($major, $minor);

    icalenum_num_to_reqstat($mj, $mn);
  }

  method reqstat_code (Int() $stat) {
    my icalrequeststatus $s = $stat;

    icalenum_reqstat_code($stat);
  }

  method reqstat_code_r (Int() $stat) {
    my icalrequeststatus $s = $stat;

    icalenum_reqstat_code_r($stat);
  }

  method reqstat_desc (Int() $stat) {
    my icalrequeststatus $s = $stat;

    icalenum_reqstat_desc($stat);
  }

  method reqstat_major (Int() $stat) {
    my icalrequeststatus $s = $stat;

    icalenum_reqstat_major($stat);
  }

  method reqstat_minor (Int() $stat) {
    my icalrequeststatus $s = $stat;

    icalenum_reqstat_minor($stat);
  }

}

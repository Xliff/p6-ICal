use v6;

use ICal::Raw::Types;

use ICal::Property;


### lib/ICal/Property/Acknowledged.pm6

class ICal::Property::Acknowledged is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_acknowledged($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_acknowledged(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_acknowledged(self.icalproperty, $v);
  }

}
sub icalproperty_new_acknowledged (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_acknowledged (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_acknowledged (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/CarLevel.pm6

class ICal::Property::CarLevel is ICal::Property {

  method new (icalproperty_carlevel $var) {
    my $property = icalproperty_new_carlevel($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_carlevel(self.icalproperty);
  }

  method set (icalproperty_carlevel $v) {
    icalproperty_set_carlevel(self.icalproperty, $v);
  }

}
sub icalproperty_new_carlevel (icalproperty_carlevel)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_carlevel (icalproperty)
  returns icalproperty_carlevel
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_carlevel (icalproperty, icalproperty_carlevel)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/BusyRype.pm6

class ICal::Property::BusyRype is ICal::Property {

  method new (icalproperty_busytype() $var) {
    my $property = icalproperty_new_busyrype($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_busyrype(self.icalproperty);
  }

  method set (icalproperty_busytype() $v) {
    icalproperty_set_busyrype(self.icalproperty, $v);
  }

}
sub icalproperty_new_busyrype (icalproperty_busytype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_busyrype (icalproperty)
  returns icalproperty_busytype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_busyrype (icalproperty, icalproperty_busytype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/AcceptResponse.pm6

class ICal::Property::AcceptResponse is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_acceptresponse($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_acceptresponse(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_acceptresponse(self.icalproperty, $v);
  }

}
sub icalproperty_new_acceptresponse (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_acceptresponse (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_acceptresponse (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/PollItemID.pm6

class ICal::Property::PollItemID is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_pollitemid($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_pollitemid(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_pollitemid(self.icalproperty, $v);
  }

}
sub icalproperty_new_pollitemid (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_pollitemid (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_pollitemid (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/PollMode.pm6

class ICal::Property::PollMode is ICal::Property {

  method new (icalproperty_pollmode $var) {
    my $property = icalproperty_new_pollmode($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_pollmode(self.icalproperty);
  }

  method set (icalproperty_pollmode $v) {
    icalproperty_set_pollmode(self.icalproperty, $v);
  }

}
sub icalproperty_new_pollmode (icalproperty_pollmode)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_pollmode (icalproperty)
  returns icalproperty_pollmode
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_pollmode (icalproperty, icalproperty_pollmode)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/PollProperties.pm6

class ICal::Property::PollProperties is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_pollproperties($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_pollproperties(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_pollproperties(self.icalproperty, $v);
  }

}
sub icalproperty_new_pollproperties (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_pollproperties (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_pollproperties (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/PollWinner.pm6

class ICal::Property::PollWinner is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_pollwinner($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_pollwinner(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_pollwinner(self.icalproperty, $v);
  }

}
sub icalproperty_new_pollwinner (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_pollwinner (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_pollwinner (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Voter.pm6

class ICal::Property::Voter is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_voter($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_voter(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_voter(self.icalproperty, $v);
  }

}
sub icalproperty_new_voter (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_voter (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_voter (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/TZIDAliasOf.pm6

class ICal::Property::TZIDAliasOf is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_tzidaliasof($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_tzidaliasof(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_tzidaliasof(self.icalproperty, $v);
  }

}
sub icalproperty_new_tzidaliasof (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzidaliasof (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzidaliasof (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/TZUntil.pm6

class ICal::Property::TZUntil is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_tzuntil($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_tzuntil(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_tzuntil(self.icalproperty, $v);
  }

}
sub icalproperty_new_tzuntil (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzuntil (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzuntil (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/CarID.pm6

class ICal::Property::CarID is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_carid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_carid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_carid(self.icalproperty, $v);
  }

}
sub icalproperty_new_carid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_carid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_carid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/PollCompletion.pm6

class ICal::Property::PollCompletion is ICal::Property {

  method new (icalproperty_pollcompletion $var) {
    my $property = icalproperty_new_pollcompletion($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_pollcompletion(self.icalproperty);
  }

  method set (icalproperty_pollcompletion $v) {
    icalproperty_set_pollcompletion(self.icalproperty, $v);
  }

}
sub icalproperty_new_pollcompletion (icalproperty_pollcompletion)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_pollcompletion (icalproperty)
  returns icalproperty_pollcompletion
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_pollcompletion (icalproperty, icalproperty_pollcompletion)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/ReplyURL.pm6

class ICal::Property::ReplyURL is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_replyurl($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_replyurl(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_replyurl(self.icalproperty, $v);
  }

}
sub icalproperty_new_replyurl (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_replyurl (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_replyurl (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Response.pm6

class ICal::Property::Response is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_response($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_response(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_response(self.icalproperty, $v);
  }

}
sub icalproperty_new_response (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_response (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_response (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/EstimatedDuration.pm6

class ICal::Property::EstimatedDuration is ICal::Property {

  method new (icaldurationtype() $var) {
    my $property = icalproperty_new_estimatedduration($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_estimatedduration(self.icalproperty);
  }

  method set (icaldurationtype() $v) {
    icalproperty_set_estimatedduration(self.icalproperty, $v);
  }

}
sub icalproperty_new_estimatedduration (icaldurationtype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_estimatedduration (icalproperty)
  returns icaldurationtype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_estimatedduration (icalproperty, icaldurationtype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/TaskMode.pm6

class ICal::Property::TaskMode is ICal::Property {

  method new (icalproperty_taskmode $var) {
    my $property = icalproperty_new_taskmode($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_taskmode(self.icalproperty);
  }

  method set (icalproperty_taskmode $v) {
    icalproperty_set_taskmode(self.icalproperty, $v);
  }

}
sub icalproperty_new_taskmode (icalproperty_taskmode)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_taskmode (icalproperty)
  returns icalproperty_taskmode
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_taskmode (icalproperty, icalproperty_taskmode)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Name.pm6

class ICal::Property::Name is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_name($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_name(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_name(self.icalproperty, $v);
  }

}
sub icalproperty_new_name (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_name (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_name (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/RefreshInterval.pm6

class ICal::Property::RefreshInterval is ICal::Property {

  method new (icaldurationtype() $var) {
    my $property = icalproperty_new_refreshinterval($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_refreshinterval(self.icalproperty);
  }

  method set (icaldurationtype() $v) {
    icalproperty_set_refreshinterval(self.icalproperty, $v);
  }

}
sub icalproperty_new_refreshinterval (icaldurationtype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_refreshinterval (icalproperty)
  returns icaldurationtype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_refreshinterval (icalproperty, icaldurationtype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Source.pm6

class ICal::Property::Source is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_source($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_source(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_source(self.icalproperty, $v);
  }

}
sub icalproperty_new_source (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_source (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_source (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Color.pm6

class ICal::Property::Color is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_color($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_color(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_color(self.icalproperty, $v);
  }

}
sub icalproperty_new_color (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_color (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_color (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Image.pm6

class ICal::Property::Image is ICal::Property {

  method new (icalattach() $var) {
    my $property = icalproperty_new_image($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_image(self.icalproperty);
  }

  method set (icalattach() $v) {
    icalproperty_set_image(self.icalproperty, $v);
  }

}
sub icalproperty_new_image (icalattach)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_image (icalproperty)
  returns icalattach
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_image (icalproperty, icalattach)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Categories.pm6

class ICal::Property::Categories is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_categories($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_categories(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_categories(self.icalproperty, $v);
  }

}
sub icalproperty_new_categories (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_categories (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_categories (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Conference.pm6

class ICal::Property::Conference is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_conference($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_conference(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_conference(self.icalproperty, $v);
  }

}
sub icalproperty_new_conference (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_conference (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_conference (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/PatchVersion.pm6

class ICal::Property::PatchVersion is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_patchversion($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_patchversion(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_patchversion(self.icalproperty, $v);
  }

}
sub icalproperty_new_patchversion (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_patchversion (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_patchversion (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/PatchOrder.pm6

class ICal::Property::PatchOrder is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_patchorder($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_patchorder(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_patchorder(self.icalproperty, $v);
  }

}
sub icalproperty_new_patchorder (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_patchorder (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_patchorder (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/PatchTarget.pm6

class ICal::Property::PatchTarget is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_patchtarget($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_patchtarget(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_patchtarget(self.icalproperty, $v);
  }

}
sub icalproperty_new_patchtarget (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_patchtarget (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_patchtarget (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/PatchDelete.pm6

class ICal::Property::PatchDelete is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_patchdelete($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_patchdelete(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_patchdelete(self.icalproperty, $v);
  }

}
sub icalproperty_new_patchdelete (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_patchdelete (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_patchdelete (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/PatchParameter.pm6

class ICal::Property::PatchParameter is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_patchparameter($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_patchparameter(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_patchparameter(self.icalproperty, $v);
  }

}
sub icalproperty_new_patchparameter (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_patchparameter (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_patchparameter (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Class.pm6

class ICal::Property::Class is ICal::Property {

  method new (icalproperty_class $var) {
    my $property = icalproperty_new_class($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_class(self.icalproperty);
  }

  method set (icalproperty_class $v) {
    icalproperty_set_class(self.icalproperty, $v);
  }

}
sub icalproperty_new_class (icalproperty_class)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_class (icalproperty)
  returns icalproperty_class
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_class (icalproperty, icalproperty_class)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Cmd.pm6

class ICal::Property::Cmd is ICal::Property {

  method new (icalproperty_cmd $var) {
    my $property = icalproperty_new_cmd($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_cmd(self.icalproperty);
  }

  method set (icalproperty_cmd $v) {
    icalproperty_set_cmd(self.icalproperty, $v);
  }

}
sub icalproperty_new_cmd (icalproperty_cmd)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_cmd (icalproperty)
  returns icalproperty_cmd
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_cmd (icalproperty, icalproperty_cmd)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Comment.pm6

class ICal::Property::Comment is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_comment($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_comment(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_comment(self.icalproperty, $v);
  }

}
sub icalproperty_new_comment (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_comment (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_comment (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Completed.pm6

class ICal::Property::Completed is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_completed($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_completed(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_completed(self.icalproperty, $v);
  }

}
sub icalproperty_new_completed (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_completed (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_completed (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Components.pm6

class ICal::Property::Components is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_components($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_components(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_components(self.icalproperty, $v);
  }

}
sub icalproperty_new_components (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_components (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_components (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Contact.pm6

class ICal::Property::Contact is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_contact($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_contact(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_contact(self.icalproperty, $v);
  }

}
sub icalproperty_new_contact (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_contact (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_contact (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Created.pm6

class ICal::Property::Created is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_created($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_created(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_created(self.icalproperty, $v);
  }

}
sub icalproperty_new_created (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_created (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_created (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Action.pm6

class ICal::Property::Action is ICal::Property {

  method new (icalproperty_action $var) {
    my $property = icalproperty_new_action($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_action(self.icalproperty);
  }

  method set (icalproperty_action $v) {
    icalproperty_set_action(self.icalproperty, $v);
  }

}
sub icalproperty_new_action (icalproperty_action)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_action (icalproperty)
  returns icalproperty_action
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_action (icalproperty, icalproperty_action)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/CSID.pm6

class ICal::Property::CSID is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_csid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_csid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_csid(self.icalproperty, $v);
  }

}
sub icalproperty_new_csid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_csid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_csid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Dat.pm6

class ICal::Property::Dat is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_dat($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_dat(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_dat(self.icalproperty, $v);
  }

}
sub icalproperty_new_dat (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_dat (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_dat (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/DateMin.pm6

class ICal::Property::DateMin is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_datemin($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_datemin(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_datemin(self.icalproperty, $v);
  }

}
sub icalproperty_new_datemin (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_datemin (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_datemin (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Decreed.pm6

class ICal::Property::Decreed is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_decreed($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_decreed(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_decreed(self.icalproperty, $v);
  }

}
sub icalproperty_new_decreed (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_decreed (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_decreed (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/DefaultCharset.pm6

class ICal::Property::DefaultCharset is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_defaultcharset($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_defaultcharset(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_defaultcharset(self.icalproperty, $v);
  }

}
sub icalproperty_new_defaultcharset (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_defaultcharset (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_defaultcharset (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/DefaultLocale.pm6

class ICal::Property::DefaultLocale is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_defaultlocale($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_defaultlocale(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_defaultlocale(self.icalproperty, $v);
  }

}
sub icalproperty_new_defaultlocale (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_defaultlocale (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_defaultlocale (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/DefaultTZID.pm6

class ICal::Property::DefaultTZID is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_defaulttzid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_defaulttzid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_defaulttzid(self.icalproperty, $v);
  }

}
sub icalproperty_new_defaulttzid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_defaulttzid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_defaulttzid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/DefaultVCars.pm6

class ICal::Property::DefaultVCars is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_defaultvcars($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_defaultvcars(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_defaultvcars(self.icalproperty, $v);
  }

}
sub icalproperty_new_defaultvcars (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_defaultvcars (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_defaultvcars (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Deny.pm6

class ICal::Property::Deny is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_deny($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_deny(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_deny(self.icalproperty, $v);
  }

}
sub icalproperty_new_deny (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_deny (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_deny (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Description.pm6

class ICal::Property::Description is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_description($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_description(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_description(self.icalproperty, $v);
  }

}
sub icalproperty_new_description (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_description (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_description (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/AllowConflict.pm6

class ICal::Property::AllowConflict is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_allowconflict($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_allowconflict(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_allowconflict(self.icalproperty, $v);
  }

}
sub icalproperty_new_allowconflict (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_allowconflict (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_allowconflict (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/DTEnd.pm6

class ICal::Property::DTEnd is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_dtend($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_dtend(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_dtend(self.icalproperty, $v);
  }

}
sub icalproperty_new_dtend (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_dtend (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_dtend (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/DTStamp.pm6

class ICal::Property::DTStamp is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_dtstamp($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_dtstamp(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_dtstamp(self.icalproperty, $v);
  }

}
sub icalproperty_new_dtstamp (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_dtstamp (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_dtstamp (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/DTStart.pm6

class ICal::Property::DTStart is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_dtstart($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_dtstart(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_dtstart(self.icalproperty, $v);
  }

}
sub icalproperty_new_dtstart (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_dtstart (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_dtstart (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Due.pm6

class ICal::Property::Due is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_due($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_due(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_due(self.icalproperty, $v);
  }

}
sub icalproperty_new_due (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_due (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_due (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Duration.pm6

class ICal::Property::Duration is ICal::Property {

  method new (icaldurationtype() $var) {
    my $property = icalproperty_new_duration($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_duration(self.icalproperty);
  }

  method set (icaldurationtype() $v) {
    icalproperty_set_duration(self.icalproperty, $v);
  }

}
sub icalproperty_new_duration (icaldurationtype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_duration (icalproperty)
  returns icaldurationtype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_duration (icalproperty, icaldurationtype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/ExDate.pm6

class ICal::Property::ExDate is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_exdate($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_exdate(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_exdate(self.icalproperty, $v);
  }

}
sub icalproperty_new_exdate (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_exdate (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_exdate (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Expand.pm6

class ICal::Property::Expand is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_expand($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_expand(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_expand(self.icalproperty, $v);
  }

}
sub icalproperty_new_expand (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_expand (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_expand (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/ExRule.pm6

class ICal::Property::ExRule is ICal::Property {

  method new (icalrecurrencetype() $var) {
    my $property = icalproperty_new_exrule($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_exrule(self.icalproperty);
  }

  method set (icalrecurrencetype() $v) {
    icalproperty_set_exrule(self.icalproperty, $v);
  }

}
sub icalproperty_new_exrule (icalrecurrencetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_exrule (icalproperty)
  returns icalrecurrencetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_exrule (icalproperty, icalrecurrencetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/FreeBusy.pm6

class ICal::Property::FreeBusy is ICal::Property {

  method new (icalperiodtype() $var) {
    my $property = icalproperty_new_freebusy($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_freebusy(self.icalproperty);
  }

  method set (icalperiodtype() $v) {
    icalproperty_set_freebusy(self.icalproperty, $v);
  }

}
sub icalproperty_new_freebusy (icalperiodtype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_freebusy (icalproperty)
  returns icalperiodtype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_freebusy (icalproperty, icalperiodtype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Geo.pm6

class ICal::Property::Geo is ICal::Property {

  method new (icalgeotype() $var) {
    my $property = icalproperty_new_geo($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_geo(self.icalproperty);
  }

  method set (icalgeotype() $v) {
    icalproperty_set_geo(self.icalproperty, $v);
  }

}
sub icalproperty_new_geo (icalgeotype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_geo (icalproperty)
  returns icalgeotype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_geo (icalproperty, icalgeotype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Attach.pm6

class ICal::Property::Attach is ICal::Property {

  method new (icalattach() $var) {
    my $property = icalproperty_new_attach($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_attach(self.icalproperty);
  }

  method set (icalattach() $v) {
    icalproperty_set_attach(self.icalproperty, $v);
  }

}
sub icalproperty_new_attach (icalattach)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_attach (icalproperty)
  returns icalattach
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_attach (icalproperty, icalattach)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Grant.pm6

class ICal::Property::Grant is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_grant($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_grant(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_grant(self.icalproperty, $v);
  }

}
sub icalproperty_new_grant (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_grant (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_grant (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/ITipVersion.pm6

class ICal::Property::ITipVersion is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_itipversion($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_itipversion(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_itipversion(self.icalproperty, $v);
  }

}
sub icalproperty_new_itipversion (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_itipversion (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_itipversion (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/LastModified.pm6

class ICal::Property::LastModified is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_lastmodified($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_lastmodified(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_lastmodified(self.icalproperty, $v);
  }

}
sub icalproperty_new_lastmodified (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_lastmodified (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_lastmodified (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Location.pm6

class ICal::Property::Location is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_location($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_location(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_location(self.icalproperty, $v);
  }

}
sub icalproperty_new_location (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_location (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_location (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/MaxComponentSize.pm6

class ICal::Property::MaxComponentSize is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_maxcomponentsize($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_maxcomponentsize(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_maxcomponentsize(self.icalproperty, $v);
  }

}
sub icalproperty_new_maxcomponentsize (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_maxcomponentsize (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_maxcomponentsize (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/MaxDate.pm6

class ICal::Property::MaxDate is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_maxdate($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_maxdate(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_maxdate(self.icalproperty, $v);
  }

}
sub icalproperty_new_maxdate (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_maxdate (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_maxdate (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/MaxResults.pm6

class ICal::Property::MaxResults is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_maxresults($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_maxresults(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_maxresults(self.icalproperty, $v);
  }

}
sub icalproperty_new_maxresults (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_maxresults (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_maxresults (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/MaxResultsSize.pm6

class ICal::Property::MaxResultsSize is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_maxresultssize($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_maxresultssize(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_maxresultssize(self.icalproperty, $v);
  }

}
sub icalproperty_new_maxresultssize (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_maxresultssize (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_maxresultssize (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Method.pm6

class ICal::Property::Method is ICal::Property {

  method new (icalproperty_method $var) {
    my $property = icalproperty_new_method($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_method(self.icalproperty);
  }

  method set (icalproperty_method $v) {
    icalproperty_set_method(self.icalproperty, $v);
  }

}
sub icalproperty_new_method (icalproperty_method)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_method (icalproperty)
  returns icalproperty_method
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_method (icalproperty, icalproperty_method)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/MinDate.pm6

class ICal::Property::MinDate is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_mindate($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_mindate(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_mindate(self.icalproperty, $v);
  }

}
sub icalproperty_new_mindate (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_mindate (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_mindate (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Attendee.pm6

class ICal::Property::Attendee is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_attendee($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_attendee(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_attendee(self.icalproperty, $v);
  }

}
sub icalproperty_new_attendee (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_attendee (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_attendee (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Multipart.pm6

class ICal::Property::Multipart is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_multipart($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_multipart(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_multipart(self.icalproperty, $v);
  }

}
sub icalproperty_new_multipart (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_multipart (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_multipart (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Organizer.pm6

class ICal::Property::Organizer is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_organizer($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_organizer(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_organizer(self.icalproperty, $v);
  }

}
sub icalproperty_new_organizer (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_organizer (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_organizer (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Owner.pm6

class ICal::Property::Owner is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_owner($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_owner(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_owner(self.icalproperty, $v);
  }

}
sub icalproperty_new_owner (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_owner (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_owner (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/PercentComplete.pm6

class ICal::Property::PercentComplete is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_percentcomplete($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_percentcomplete(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_percentcomplete(self.icalproperty, $v);
  }

}
sub icalproperty_new_percentcomplete (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_percentcomplete (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_percentcomplete (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Permission.pm6

class ICal::Property::Permission is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_permission($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_permission(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_permission(self.icalproperty, $v);
  }

}
sub icalproperty_new_permission (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_permission (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_permission (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Priority.pm6

class ICal::Property::Priority is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_priority($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_priority(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_priority(self.icalproperty, $v);
  }

}
sub icalproperty_new_priority (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_priority (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_priority (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/ProdID.pm6

class ICal::Property::ProdID is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_prodid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_prodid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_prodid(self.icalproperty, $v);
  }

}
sub icalproperty_new_prodid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_prodid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_prodid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Query.pm6

class ICal::Property::Query is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_query($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_query(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_query(self.icalproperty, $v);
  }

}
sub icalproperty_new_query (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_query (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_query (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/QueryLevel.pm6

class ICal::Property::QueryLevel is ICal::Property {

  method new (icalproperty_querylevel $var) {
    my $property = icalproperty_new_querylevel($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_querylevel(self.icalproperty);
  }

  method set (icalproperty_querylevel $v) {
    icalproperty_set_querylevel(self.icalproperty, $v);
  }

}
sub icalproperty_new_querylevel (icalproperty_querylevel)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_querylevel (icalproperty)
  returns icalproperty_querylevel
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_querylevel (icalproperty, icalproperty_querylevel)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/CalID.pm6

class ICal::Property::CalID is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_calid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_calid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_calid(self.icalproperty, $v);
  }

}
sub icalproperty_new_calid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_calid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_calid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/QueryID.pm6

class ICal::Property::QueryID is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_queryid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_queryid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_queryid(self.icalproperty, $v);
  }

}
sub icalproperty_new_queryid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_queryid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_queryid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/QueryName.pm6

class ICal::Property::QueryName is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_queryname($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_queryname(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_queryname(self.icalproperty, $v);
  }

}
sub icalproperty_new_queryname (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_queryname (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_queryname (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/RDate.pm6

class ICal::Property::RDate is ICal::Property {

  method new (icaldatetimeperiodtype() $var) {
    my $property = icalproperty_new_rdate($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_rdate(self.icalproperty);
  }

  method set (icaldatetimeperiodtype() $v) {
    icalproperty_set_rdate(self.icalproperty, $v);
  }

}
sub icalproperty_new_rdate (icaldatetimeperiodtype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_rdate (icalproperty)
  returns icaldatetimeperiodtype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_rdate (icalproperty, icaldatetimeperiodtype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/RecurAccepted.pm6

class ICal::Property::RecurAccepted is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_recuraccepted($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_recuraccepted(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_recuraccepted(self.icalproperty, $v);
  }

}
sub icalproperty_new_recuraccepted (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_recuraccepted (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_recuraccepted (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/RecurExpand.pm6

class ICal::Property::RecurExpand is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_recurexpand($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_recurexpand(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_recurexpand(self.icalproperty, $v);
  }

}
sub icalproperty_new_recurexpand (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_recurexpand (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_recurexpand (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/RecurLimit.pm6

class ICal::Property::RecurLimit is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_recurlimit($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_recurlimit(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_recurlimit(self.icalproperty, $v);
  }

}
sub icalproperty_new_recurlimit (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_recurlimit (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_recurlimit (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/RecurrenceID.pm6

class ICal::Property::RecurrenceID is ICal::Property {

  method new (icaltimetype() $var) {
    my $property = icalproperty_new_recurrenceid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_recurrenceid(self.icalproperty);
  }

  method set (icaltimetype() $v) {
    icalproperty_set_recurrenceid(self.icalproperty, $v);
  }

}
sub icalproperty_new_recurrenceid (icaltimetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_recurrenceid (icalproperty)
  returns icaltimetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_recurrenceid (icalproperty, icaltimetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/RelatedTo.pm6

class ICal::Property::RelatedTo is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_relatedto($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_relatedto(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_relatedto(self.icalproperty, $v);
  }

}
sub icalproperty_new_relatedto (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_relatedto (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_relatedto (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/RelCalID.pm6

class ICal::Property::RelCalID is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_relcalid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_relcalid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_relcalid(self.icalproperty, $v);
  }

}
sub icalproperty_new_relcalid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_relcalid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_relcalid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Repeat.pm6

class ICal::Property::Repeat is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_repeat($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_repeat(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_repeat(self.icalproperty, $v);
  }

}
sub icalproperty_new_repeat (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_repeat (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_repeat (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/CalMaster.pm6

class ICal::Property::CalMaster is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_calmaster($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_calmaster(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_calmaster(self.icalproperty, $v);
  }

}
sub icalproperty_new_calmaster (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_calmaster (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_calmaster (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/RequestStatus.pm6

class ICal::Property::RequestStatus is ICal::Property {

  method new (icalreqstattype() $var) {
    my $property = icalproperty_new_requeststatus($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_requeststatus(self.icalproperty);
  }

  method set (icalreqstattype() $v) {
    icalproperty_set_requeststatus(self.icalproperty, $v);
  }

}
sub icalproperty_new_requeststatus (icalreqstattype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_requeststatus (icalproperty)
  returns icalreqstattype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_requeststatus (icalproperty, icalreqstattype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Resources.pm6

class ICal::Property::Resources is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_resources($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_resources(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_resources(self.icalproperty, $v);
  }

}
sub icalproperty_new_resources (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_resources (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_resources (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Restriction.pm6

class ICal::Property::Restriction is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_restriction($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_restriction(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_restriction(self.icalproperty, $v);
  }

}
sub icalproperty_new_restriction (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_restriction (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_restriction (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/RRule.pm6

class ICal::Property::RRule is ICal::Property {

  method new (icalrecurrencetype() $var) {
    my $property = icalproperty_new_rrule($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_rrule(self.icalproperty);
  }

  method set (icalrecurrencetype() $v) {
    icalproperty_set_rrule(self.icalproperty, $v);
  }

}
sub icalproperty_new_rrule (icalrecurrencetype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_rrule (icalproperty)
  returns icalrecurrencetype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_rrule (icalproperty, icalrecurrencetype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Scope.pm6

class ICal::Property::Scope is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_scope($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_scope(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_scope(self.icalproperty, $v);
  }

}
sub icalproperty_new_scope (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_scope (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_scope (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Sequence.pm6

class ICal::Property::Sequence is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_sequence($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_sequence(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_sequence(self.icalproperty, $v);
  }

}
sub icalproperty_new_sequence (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_sequence (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_sequence (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Status.pm6

class ICal::Property::Status is ICal::Property {

  method new (icalproperty_status $var) {
    my $property = icalproperty_new_status($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_status(self.icalproperty);
  }

  method set (icalproperty_status $v) {
    icalproperty_set_status(self.icalproperty, $v);
  }

}
sub icalproperty_new_status (icalproperty_status)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_status (icalproperty)
  returns icalproperty_status
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_status (icalproperty, icalproperty_status)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/StoresExpanded.pm6

class ICal::Property::StoresExpanded is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_storesexpanded($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_storesexpanded(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_storesexpanded(self.icalproperty, $v);
  }

}
sub icalproperty_new_storesexpanded (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_storesexpanded (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_storesexpanded (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Summary.pm6

class ICal::Property::Summary is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_summary($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_summary(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_summary(self.icalproperty, $v);
  }

}
sub icalproperty_new_summary (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_summary (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_summary (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Target.pm6

class ICal::Property::Target is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_target($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_target(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_target(self.icalproperty, $v);
  }

}
sub icalproperty_new_target (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_target (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_target (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/CalScale.pm6

class ICal::Property::CalScale is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_calscale($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_calscale(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_calscale(self.icalproperty, $v);
  }

}
sub icalproperty_new_calscale (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_calscale (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_calscale (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Transp.pm6

class ICal::Property::Transp is ICal::Property {

  method new (icalproperty_transp $var) {
    my $property = icalproperty_new_transp($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_transp(self.icalproperty);
  }

  method set (icalproperty_transp $v) {
    icalproperty_set_transp(self.icalproperty, $v);
  }

}
sub icalproperty_new_transp (icalproperty_transp)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_transp (icalproperty)
  returns icalproperty_transp
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_transp (icalproperty, icalproperty_transp)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Trigger.pm6

class ICal::Property::Trigger is ICal::Property {

  method new (icaltriggertype() $var) {
    my $property = icalproperty_new_trigger($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_trigger(self.icalproperty);
  }

  method set (icaltriggertype() $v) {
    icalproperty_set_trigger(self.icalproperty, $v);
  }

}
sub icalproperty_new_trigger (icaltriggertype)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_trigger (icalproperty)
  returns icaltriggertype
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_trigger (icalproperty, icaltriggertype)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/TZid.pm6

class ICal::Property::TZid is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_tzid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_tzid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_tzid(self.icalproperty, $v);
  }

}
sub icalproperty_new_tzid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/TZname.pm6

class ICal::Property::TZname is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_tzname($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_tzname(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_tzname(self.icalproperty, $v);
  }

}
sub icalproperty_new_tzname (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzname (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzname (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/TZoffsetfrom.pm6

class ICal::Property::TZoffsetfrom is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_tzoffsetfrom($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_tzoffsetfrom(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_tzoffsetfrom(self.icalproperty, $v);
  }

}
sub icalproperty_new_tzoffsetfrom (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzoffsetfrom (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzoffsetfrom (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/TZoffsetto.pm6

class ICal::Property::TZoffsetto is ICal::Property {

  method new (Int() $var) {
    my uint32 $nv = $var;
    my $property = icalproperty_new_tzoffsetto($nv);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_tzoffsetto(self.icalproperty);
  }

  method set (Int() $v) {
    icalproperty_set_tzoffsetto(self.icalproperty, $v);
  }

}
sub icalproperty_new_tzoffsetto (uint32)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzoffsetto (icalproperty)
  returns uint32
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzoffsetto (icalproperty, uint32)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/TZurl.pm6

class ICal::Property::TZurl is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_tzurl($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_tzurl(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_tzurl(self.icalproperty, $v);
  }

}
sub icalproperty_new_tzurl (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_tzurl (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_tzurl (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Uid.pm6

class ICal::Property::Uid is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_uid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_uid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_uid(self.icalproperty, $v);
  }

}
sub icalproperty_new_uid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_uid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_uid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Url.pm6

class ICal::Property::Url is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_url($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_url(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_url(self.icalproperty, $v);
  }

}
sub icalproperty_new_url (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_url (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_url (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/Version.pm6

class ICal::Property::Version is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_version($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_version(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_version(self.icalproperty, $v);
  }

}
sub icalproperty_new_version (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_version (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_version (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/CapVersion.pm6

class ICal::Property::CapVersion is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_capversion($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_capversion(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_capversion(self.icalproperty, $v);
  }

}
sub icalproperty_new_capversion (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_capversion (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_capversion (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/X.pm6

class ICal::Property::X is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_x($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_x(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_x(self.icalproperty, $v);
  }

}
sub icalproperty_new_x (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_x (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_x (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/XlicClass.pm6

class ICal::Property::XlicClass is ICal::Property {

  method new (icalproperty_xlicclass $var) {
    my $property = icalproperty_new_xlicclass($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicclass(self.icalproperty);
  }

  method set (icalproperty_xlicclass $v) {
    icalproperty_set_xlicclass(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicclass (icalproperty_xlicclass)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicclass (icalproperty)
  returns icalproperty_xlicclass
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicclass (icalproperty, icalproperty_xlicclass)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/XlicClusterCount.pm6

class ICal::Property::XlicClusterCount is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_xlicclustercount($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicclustercount(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicclustercount(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicclustercount (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicclustercount (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicclustercount (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/XlicError.pm6

class ICal::Property::XlicError is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_xlicerror($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicerror(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicerror(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicerror (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicerror (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicerror (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/XlicMIMECharset.pm6

class ICal::Property::XlicMIMECharset is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_xlicmimecharset($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicmimecharset(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimecharset(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicmimecharset (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimecharset (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimecharset (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/XlicMIMECid.pm6

class ICal::Property::XlicMIMECid is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_xlicmimecid($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicmimecid(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimecid(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicmimecid (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimecid (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimecid (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/XlicMIMEContenttype.pm6

class ICal::Property::XlicMIMEContenttype is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_xlicmimecontenttype($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicmimecontenttype(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimecontenttype(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicmimecontenttype (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimecontenttype (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimecontenttype (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/XlicMIMEEncoding.pm6

class ICal::Property::XlicMIMEEncoding is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_xlicmimeencoding($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicmimeencoding(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimeencoding(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicmimeencoding (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimeencoding (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimeencoding (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/XlicMIMEFilename.pm6

class ICal::Property::XlicMIMEFilename is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_xlicmimefilename($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicmimefilename(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimefilename(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicmimefilename (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimefilename (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimefilename (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


### lib/ICal/Property/XlicMIMEOptinfo.pm6

class ICal::Property::XlicMIMEOptinfo is ICal::Property {

  method new (Str() $var) {
    my $property = icalproperty_new_xlicmimeoptinfo($var);

    $property ?? self.bless( :$property) !! Nil;
  }

  method get {
    icalproperty_get_xlicmimeoptinfo(self.icalproperty);
  }

  method set (Str() $v) {
    icalproperty_set_xlicmimeoptinfo(self.icalproperty, $v);
  }

}
sub icalproperty_new_xlicmimeoptinfo (Str)
  returns icalproperty
  is export
  is native(icalendar)
{ * }

sub icalproperty_get_xlicmimeoptinfo (icalproperty)
  returns Str
  is export
  is native(icalendar)
{ * }

sub icalproperty_set_xlicmimeoptinfo (icalproperty, Str)
  is export
  is native(icalendar)
{ * }


use v6;

class Build {

  method build ($workrdir) {
    #my $build-dir = $workdir.IO.add('c-helper');
    #( my $dest-dir = $workdir.IO.add('resources').add('lib') ).mkdir;

    qx{raku project-scripts/generate-helper-lib.raku};
  }

}

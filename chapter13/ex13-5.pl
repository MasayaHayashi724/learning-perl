use strict;
use warnings;
use File::Basename;
use File::Spec;

my $from = shift @ARGV;
my $to = shift @ARGV;

if (-d $to) {
  my $basename = basename $from;
  $to = File::Spec->catfile($to, $basename);
}

rename $from, $to or die "Cannot rename '$from' to '$to': $!";

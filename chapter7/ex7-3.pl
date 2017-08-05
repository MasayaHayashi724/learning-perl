use strict;
use warnings;

if (@ARGV == 0) {
  print "Usage: perl ex7-3.pl [filename]\n";
  exit 1;
}

chomp(my @lines = <>);
foreach (@lines) {
  if (/\./) {
    print "$_\n";
  }
}

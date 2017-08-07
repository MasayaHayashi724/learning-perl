use strict;
use warnings;

if (@ARGV == 0) {
  print "Usage: perl ex7-5.pl [filename]\n";
  exit 1;
}

chomp(my @lines = <>);
foreach (@lines) {
  if (/(\S)\g{1}/) {
    print "$_\n";
  }
}

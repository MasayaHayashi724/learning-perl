use strict;
use warnings;

if (@ARGV == 0) {
  print "Usage: perl ex7-2.pl [filename]\n";
  exit 1;
}

chomp(my @lines = <>);
foreach (@lines) {
  if (/(f|F)red/) {  # /[fF]red/ のほうが効率的
    print "$_\n";
  }
}

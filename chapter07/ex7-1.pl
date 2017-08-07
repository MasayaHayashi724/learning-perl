use strict;
use warnings;

if (@ARGV == 0) {
  print "Usage: perl ex7-1.pl [filename]\n";
  exit 1;
}

chomp(my @lines = <>);
foreach (@lines) {
  if (/fred/) {
    print "$_\n";
  }
}

# while (<>) {
#   if (/fred/) {
#     print;
#   }
# }
# でもOK

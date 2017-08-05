use strict;
use warnings;

while (<>) {
  chomp;
  if (/(.+\s)$/s) {
    print "\$1 contains '$1'\n";
  }
}

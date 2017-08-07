use strict;
use warnings;

while (<>) {
  chomp;
  if (/(.+\s)$/s) {  # /\s+$/ でもOK
    print "\$1 contains '$1'\n";
  }
}

use strict;
use warnings;

foreach (@ARGV) {
  if (-o -r -w) {
    print "I own '$_', and it's readable and writable.\n";
  }
}

use strict;
use warnings;

while (<>) {
  chomp;
  if (/(\w+a)$/) {
    print "\$1 contains '$1'\n";
  } else {
    print "No match: |$_|\n";
  }
}

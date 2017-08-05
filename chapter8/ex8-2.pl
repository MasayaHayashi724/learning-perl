use strict;
use warnings;

while (<>) {
  chomp;
  if (/a$/) {
    print "Matched: |$`<$&>$'|\n";
  } else {
    print "No match: |$_|\n";
  }
}

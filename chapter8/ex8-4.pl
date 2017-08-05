use strict;
use warnings;

while (<>) {
  chomp;
  if (/(?<word>\w+a)$/) {
    print "'word' contains '$+{word}'\n";
  } else {
    print "No match: |$_|\n";
  }
}

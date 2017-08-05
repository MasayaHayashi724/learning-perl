use strict;
use warnings;

while (<>) {
  chomp;
  if (/(?<word>\w+a)\b(?<followed>.{0,5})/) {
    print "'word' contains '$+{word}', followed by '$+{followed}'\n";
  } else {
    print "No match: |$_|\n";
  }
}

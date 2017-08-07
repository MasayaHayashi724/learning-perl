use strict;
use warnings;

while (<>) {
  chomp;
  if (/(?<word>\w+a)\b(?<followed>.{0,5})/) {  # m! (\b\w*a\b) (.{0,5}) !xs でもOK
    print "'word' contains '$+{word}', followed by '$+{followed}'\n";
  } else {
    print "No match: |$_|\n";
  }
}

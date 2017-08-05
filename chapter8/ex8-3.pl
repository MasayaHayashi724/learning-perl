use strict;
use warnings;

while (<>) {
  chomp;
  if (/(\w+a)$/) {  # 前問と同じように、/\b\w*a\b/ とする必要がある
    print "\$1 contains '$1'\n";
  } else {
    print "No match: |$_|\n";
  }
}

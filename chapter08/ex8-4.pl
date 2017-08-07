use strict;
use warnings;

while (<>) {
  chomp;
  if (/(?<word>\w+a)$/) {  # 前問を参考に、/(?<word>\b\w*a\b)/ とする必要がある
    print "'word' contains '$+{word}'\n";
  } else {
    print "No match: |$_|\n";
  }
}

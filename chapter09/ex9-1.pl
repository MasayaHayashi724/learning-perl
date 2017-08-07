#!/usr/bin/perl
## Copyright (C) 2017 by Masaya Hayashi

use strict;
use warnings;

if (@ARGV == 0) {
  print "Usage: perl ex9-1.pl [filename]\n";
}

$what = 'fred|barney';
$whats = $what x 3;

while (<>) {
  if (/$whats/) {  # /($what){3}/ でもOK
    print "Matched: |$`<$&>$'|\n";
  } else {
    print "No match: |$_|\n";
  }
}

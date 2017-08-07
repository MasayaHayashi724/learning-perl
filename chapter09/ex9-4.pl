#!/usr/bin/perl
## Copyright (C) 2017 by Masaya Hayashi

use strict;
use warnings;

if (@ARGV == 0) {
  print "Usage: perl ex9-4.pl [filename]\n";
}

$^I = ".bak";
while (<>) {
  if (/^#!/) {
    $_ .= "## Copyright (C) 2017 by Masaya Hayashi\n";
  }
  print;
}

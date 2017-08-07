#!/usr/bin/perl
## Copyright (C) 2017 by Masaya Hayashi

use strict;
use warnings;

if (@ARGV == 0) {  # hashで管理するほうがエラーにならないかも
  print "Usage: perl ex9-4.pl [filename]\n";
}

foreach my $index (0..$#ARGV) {
  my $filename = $ARGV[$index];
  open FILE, "<$filename" or die "Cannot open '$filename': $!";
  while (<FILE>) {
    if (/^## Copyright/) {
      delete $ARGV[$index];
    }
  }
  close FILE;
}

$^I = ".bak";
while (<>) {
  if (/^#!/) {
    $_ .= "## Copyright (C) 2017 by Masaya Hayashi\n";
  }
  print;
}

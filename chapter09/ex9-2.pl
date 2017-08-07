#!/usr/bin/perl
## Copyright (C) 2017 by Masaya Hayashi

use strict;
use warnings;

if (@ARGV == 0) {
  print "Usage: perl ex9-2.pl [filename]\n";
}

# my $in = $ARGV[0];
# unless (defined $in) {
#   die "Usage: $0 filename";
# }  # でもOK

my $in = shift @ARGV;
my $out = $in;
$out =~ s/\.\w+/.dat/;

open IN, "<$in" or die "Cannot open '$in': $!";
open OUT, "<$out" or die "Cannot open '$out': $!";

# unless (open IN, "<$in") {
#   die "Cannot open '$in': $!";
# }  # でもOK

while (<IN>) {
  s/fred/Larry/ig;
  print OUT;  # print OUT $_; でもOK
}

#!/usr/bin/perl
## Copyright (C) 2017 by Masaya Hayashi

use strict;
use warnings;

if (@ARGV == 0) {
  print "Usage: perl ex9-3.pl [filename]\n";
}

my $in = shift @ARGV;
my $out = $in;
$out =~ s/\.\w+/.dat/;

open IN, "<$in" or die "Cannot open '$in': $!";
open OUT, "<$out" or die "Cannot open '$out': $!";

while (<IN>) {
  s/fred/acriseohitsovqihstoah/ig;
  s/wilma/Fred/ig;
  s/acriseohitsovqihstoah/Wilma/ig;
  print OUT;
}

# while (<IN>) {  # こうするほうがbetter
#   chomp;
#   s/Fred/\n/gi;
#   s/Wilma/Fred/gi;
#   s/\n/Wilma/gi;
#   print OUT "$_\n";
# }

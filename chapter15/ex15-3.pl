use strict;
use warnings;
use 5.010;

if (@ARGV == 0) {
  say "Input filenames!";
}

foreach (@ARGV) {
  when( -r ) { say "'$_' is readable."; continue }
  when( -w ) { say "'$_' is writable."; continue }
  when( -x ) { say "'$_' is executable." }
}

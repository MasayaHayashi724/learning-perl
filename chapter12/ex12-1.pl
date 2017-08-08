use strict;
use warnings;

foreach (@ARGV) {
  print "'$_' is readable.\n" if -r;
  print "'$_' is writable.\n" if -w;
  print "'$_' is executable.\n" if -x;
  print "'$_' exists.\n" if -e;
}

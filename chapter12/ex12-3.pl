use strict;
use warnings;

# die "No file names supplied!\n" unless @ARGV;  # こんな感じで引数チェックするのもアリ

foreach (@ARGV) {
  if (-o -r -w) {
    print "I own '$_', and it's readable and writable.\n";
  }
}

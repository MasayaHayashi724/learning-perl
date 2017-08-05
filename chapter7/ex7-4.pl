use strict;
use warnings;

if (@ARGV == 0) {
  print "Usage: perl ex7-4.pl [filename]\n";
  exit 1;
}

chomp(my @lines = <>);
foreach (@lines) {
  if (/[A-Z][^A-Z]+/) {  # /[A-Z][a-z]+/ でもOKらしいが、masayaHayashiみたいに途中に大文字が入るやつにもマッチするのはどうなのか？
    print "$_\n";
  }
}

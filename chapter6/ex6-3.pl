use strict;
use warnings;

my $max = 0;
foreach my $key (keys %ENV) {
  my $length = length $key;
  if ($length > $max) {
    $max = $length;
  }
}

foreach my $key (sort keys %ENV) {
  printf "%${max}s\t$ENV{$key}\n", $key;
}

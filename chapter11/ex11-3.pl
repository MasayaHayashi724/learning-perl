use strict;
use warnings;

use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.008} };
my $max = 0;
foreach my $key (keys %modules) {
  my $length = length $key;
  if ($length > $max) {
    $max = $length;
  }
}

foreach my $key (sort keys %modules) {
  my $value = $modules{$key} // "undefined value";
  printf "%${max}s\t$value\n", $key;
}

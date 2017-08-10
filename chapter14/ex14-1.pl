use strict;
use warnings;

my @numbers = ( 17, 1000, 04, 1.50, 3.14159, -10, 1.5, 4, 2001, 90210, 666, );
@numbers = sort { $a <=> $b } @numbers;

my $max_length = 0;
foreach my $number (@numbers) {
  my $length = length $number;
  if ($length > $max_length) {
    $max_length = $length;
  }
}

foreach my $number (@numbers) {
  printf "%${max_length}s\n", $number;
}

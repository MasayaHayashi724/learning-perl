use strict;
use warnings;

my %last_name = qw(
  fred flintstone Wilma Flintstone Barney Rubble
  betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
);

my @first_names = sort {
  "\L$last_name{$a}" cmp "\L$last_name{$b}"
    or
  "\L$a" cmp "\L$b"
} keys %last_name;

foreach my $first_name (@first_names) {
  print "$first_name $last_name{$first_name}\n";
}

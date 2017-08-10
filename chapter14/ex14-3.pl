use strict;
use warnings;

print "Input string: ";
chomp(my $str = <STDIN>);
print "Input sub-string: ";
chomp(my $substr = <STDIN>);

my $prev_index = -1;
while (1) {
  $prev_index = index $str, $substr, $prev_index + 1;
  last if $prev_index == -1;
  print "$prev_index\n";
}

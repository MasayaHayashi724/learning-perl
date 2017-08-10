use strict;
use warnings;

print "cd ?: ";
chomp(my $dir = <STDIN>);
if ($dir =~ /^\s*$/) {
  chdir or die "Cannot change directory to home: $!";
} else {
  chdir $dir or die "Cannot change directory to '$dir': $!";
}

my @files = <*>;
foreach my $file (@files) {
  print "$file\n";
}

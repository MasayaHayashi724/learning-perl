use strict;
use warnings;

print "cd ?: ";
chomp(my $dir = <STDIN>);
if ($dir =~ /^\s*$/) {
  chdir or die "Cannot change directory to home: $!";
} else {
  chdir $dir or die "Cannot change directory to '$dir': $!";
}

opendir CURRENT_DIR, "." or die "Cannot open current directory: $!";
foreach my $file (sort readdir CURRENT_DIR) {
  print "$file\n";
}

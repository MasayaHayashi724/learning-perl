use strict;
use warnings;

# die "No file names supplied!\n" unless @ARGV;  # こんな感じで引数チェックするのもアリ

my $oldest_filename;
my $age = 0;
foreach (@ARGV) {
  if (-M $_ > $age) {
    $age = -M $_;
    $oldest_filename = $_;
  }
}
print "'$oldest_filename' is oldest.\n";
printf "It's %d days old.\n", $age;

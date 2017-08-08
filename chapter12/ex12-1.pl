use strict;
use warnings;

foreach (@ARGV) {
  print "'$_' is readable.\n" if -r;
  print "'$_' is writable.\n" if -w;
  print "'$_' is executable.\n" if -x;
  print "'$_' exists.\n" if -e;
}

# # 次のようなサブルーチンを作成してそれを呼び出すのもアリ
# sub attributes {
#   my $file = shift $_;
#   return "does not exist" unless -e $file;
#
#   my @attributes;
#   push @attributes, "readable" if -r $file;
#   push @attributes, "writable" if -w $file;
#   push @attributes, "executable" if -x $file;
#   return "exists" unless @attributes;
#   'is ' . join " and ", @attributes;
# }

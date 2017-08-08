use strict;
use warnings;

my $answer = int(1 + rand 100);
print "Do you want a debug info? (yes/no): ";
chomp(my $debug = <STDIN>);
$debug = $debug =~ m/yes/i;
while (1) {
  print "Answer: $answer\n" if $debug;
  print "Guess number between 1 and 100: ";
  chomp(my $guess = <STDIN>);
  last if $guess =~ /exit/;
  last if $guess =~ /quit/;
  redo unless $guess =~ /\d+/;
  print "Too high\n" if $guess > $answer;
  print "Too low\n" if $guess < $answer;
  if ($guess == $answer) {
    print "Congratulation!!\n";
    last;
  }
}

# # ユーザにyes/noを入力してもらうのではなく、
# my $Debug = $ENV{DEBUG} // 1;
# my $answer = int(1 + rand 100);
# print "Answer: $answer\n" if $Debug;
# # としてほしかったそう

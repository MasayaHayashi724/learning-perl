use strict;
use warnings;

my $answer = int(1 + rand 100);
while (1) {
  print "Guess number between 1 and 100: ";
  chomp(my $guess = <STDIN>);
  last if $guess =~ /exit/;  # /exit|quit/ でもよかった
  last if $guess =~ /quit/;
  redo unless $guess =~ /\d+/;
  print "Too high\n" if $guess > $answer;
  print "Too low\n" if $guess < $answer;
  if ($guess == $answer) {
    print "Congratulation!!\n";
    last;
  }
}

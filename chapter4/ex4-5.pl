use strict;
use 5.010;

sub greet {
  my $name = $_[0];  # my $name = shift;
  print "Hi $name! ";
  state @members;
  if (@members) {
    say "I've seen: @members";
  } else {
    say "You are the first one here!";
  }
  push @members, $name;
}

&greet( "Fred" );
&greet( "Barney" );
&greet( "Wilma" );
&greet( "Betty" );

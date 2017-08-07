# 入力された数のリストに対応する名前を表示する

@names = qw( fred betty barney dino wilma pebbles bamm-bamm );
chomp(@indexes = <STDIN>);

foreach (@indexes) {
  if ($_ < 1 || $_ > scalar @names) {
    $max = scalar @names;
    print "Input number between 1 and $max\n";
    exit;
  }
}

foreach (@indexes) {
  print "$names[ $_ - 1 ]\n";
}

# 入力された文字列のリストをASCIIコード順にソートして表示する

chomp(@strings = <STDIN>);
@sorted = sort @strings;
print "@sorted\n";

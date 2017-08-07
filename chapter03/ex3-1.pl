# 文字列のリストを入力の終わりまで読み込み、逆順に表示する

print("Iuput list of strings:\n");
chomp(@strings = <STDIN>);
@reversed = reverse @strings;
print "@reversed\n";

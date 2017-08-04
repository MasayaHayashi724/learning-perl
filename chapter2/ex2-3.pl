# 入力された半径の円の円周を求める
# 半径が負なら0を半径として使う

print("Input radius: ");
chomp($radius = <STDIN>);
if ($radius < 0) {
  $radius = 0;
}
$circumference = 2 * 3.141592654 * $radius;
print("Circumference is $circumference\n");

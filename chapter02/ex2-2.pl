# 入力された半径の円の円周を求める

print("Input radius: ");
chomp($radius = <STDIN>);
$circumference = 2 * 3.141592654 * $radius;
print("Circumference is $circumference\n");

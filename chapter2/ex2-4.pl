# 入力した2つの数の積を求める

print("Input arg1: ");
chomp($arg1 = <STDIN>);
print("Input arg2: ");
chomp($arg2 = <STDIN>);
$product = $arg1 * $arg2;
print("Product is $product\n");

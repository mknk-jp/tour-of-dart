var x = 1;
var hex = 0xDEADBEEF;

var y = 1.1;
var exponents = 1.42e5;
double z = 1;

// String -> int
var one = int.parse('1');

// String -> double
var onePointOne = double.parse('1.1');

// int -> String
String oneAsString = 1.toString();

// double -> String
String piAsString = 3.14159.toStringAsFixed(2);

const msPerSecond = 1000;
const secondsUntilRetry = 5;
const msUntilRetyr = secondsUntilRetry * msPerSecond;

main() {
  print('hex: $hex');

  print('exponents: $exponents');
  print('z: $z');

  assert(one == 1);

  assert(onePointOne == 1.1);

  assert(oneAsString == '1');

  assert(piAsString == '3.14');

  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
}

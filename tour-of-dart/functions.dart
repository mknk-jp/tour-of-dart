var _nobleGasses = {
  2: 'Helium',
  10: 'neon',
  18: 'argon',
};

bool isNoble(int atomicNumber) {
  return _nobleGasses[atomicNumber] != null;
}

bool isNobleShort(int atomicNumber) => _nobleGasses != null;

/// Sets the [bold] and [hidden] flags ...
void enableFlags({bool bold, bool hidden}) {}

String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

/// Sets the [bold] and [hidden] flags ...
void enableFlagsDefault({bool bold = false, bool hidden = false}) {}

String sayDefault(String from, String msg,
    [String device = 'carrier pigeon', String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  return result;
}

void doStuff({
  List<int> list = const [1, 2, 3],
  Map<String, String> gifts = const {
    'first': 'paper',
    'second': 'cotton',
    'third': 'leather'
  },
}) {
  print('list: $list');
  print('gifts: $gifts');
}

void printElement(int element) {
  print(element);
}

/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void foo() {} // A top-level function

noReturn() {}

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

main() {
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  assert(say('Bob', 'Howdy', 'smoke signal') ==
      'Bob says Howdy with a smoke signal');

  // bold will be true; hidden will be false.
  enableFlagsDefault(bold: true);

  assert(sayDefault('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');

  var list = [1, 2, 3];

  // Pass printElement as a parameter.
  list.forEach(printElement);

  var loudify = (String msg) => '!!! ${msg.toUpperCase()} !!!';
  assert(loudify('hello') == '!!! HELLO !!!');

  var fruitList = ['apples', 'bananas', 'oranges'];
  fruitList.forEach((item) {
    print('${fruitList.indexOf(item)}: $item');
  });

  fruitList.forEach((item) => print('${fruitList.indexOf(item)}: $item'));

  // Create a function that adds 2.
  var add2 = makeAdder(2);
  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);

  var x;

  // Comparing top-level functions.
  x = foo;
  assert(foo == x);

  // Comparing static methods.
  x = A.bar;
  assert(A.bar == x);

  // Comparing instance methods.
  var v = A(); // Instance #1 of A
  var w = A(); // Instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same insntace (#2)
  // so they're equal.
  assert(y.baz == x);

  // Tehese closures refer to different instances,
  // so they're unequal.
  assert(v.baz != w.baz);

  assert(noReturn() == null);
}

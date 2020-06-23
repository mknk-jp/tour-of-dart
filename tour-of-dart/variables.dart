main() {
  var name = 'Bob';
  dynamic nameDynamic = 'Bob';
  String nameString = 'Bob';

  int lineCount;
  assert(lineCount == null);

  final nameFinal = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';
  // nameFinal = 'Alice'; // Error: a final variables can only be set once.

  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standart atmosphere

  // Valid compile-time constants as of Dart 2.5.
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: "int"}; // Use is and collection if.
  print('map: $map');
  const set = {if (list is List<int>) ...list}; // ...and a spread.
  print('set: $set');
}

main() {
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  var a, b;

  a = 0;
  b = ++a; // Increment a before b gets its value
  assert(a == b);

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0

  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  var value;

  // Assign value to a
  a = value;
  // Assign value to b if b is null; otherwise, b stays the same
  b ??= value;

  a = 2;
  a *= 3; // Assign and multiply: a = a * 3
  assert(a == 6);

  value = 0x22; // 00100010
  final bitmask = 0x0f; // 00001111
  print(value);
  print(bitmask);

  assert((value & bitmask) == 0x02); // AND
  assert((value & ~bitmask) == 0x20); // AND NOT
  assert((value | bitmask) == 0x2f); // OR
  assert((value ^ bitmask) == 0x2d); // XOR
  assert((value << 4) == 0x220); // Shift left
  assert((value >> 4) == 0x02); //Shift right

  var isPublic = true;
  var visibility = isPublic ? 'public' : 'private';
  assert(visibility == 'public');

  var name;
  assert((name ?? 'Guest') == 'Guest');

  name = 'Bob';
  assert((name ?? 'Guest') == 'Bob');
}

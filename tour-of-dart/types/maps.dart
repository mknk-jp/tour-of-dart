var gifts = {
  // Key: value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings',
};

var nobleGases = {
  2: 'Helium',
  10: 'neon',
  18: 'argon',
};

final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};
// constantMap[2] = 'Helium'; // Uncommenting this causes an error.

main() {
  var gifts2 = Map();
  gifts2['first'] = 'partridge';
  gifts2['second'] = 'turtledoves';
  gifts2['fifth'] = 'golden rings';

  var nobleGases2 = Map();
  nobleGases2[2] = 'helium';
  nobleGases2[10] = 'neon';
  nobleGases2[18] = 'argon';

  gifts['fourth'] = 'calling birds'; // Add a key-value pair
  assert(gifts['first'] == 'partridge');
  assert(gifts['fifth'] == null);
}

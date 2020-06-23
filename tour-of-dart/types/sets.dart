var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astaine'};

var names = <String>{};
// Set<String> names = {}; // This works, too.
// var names = {}; // Creates a map, not a set.

var elements = <String>{};

final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
};
// constantSet.add('helium'); // Uncommenting this causes an error.

main() {
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);
}

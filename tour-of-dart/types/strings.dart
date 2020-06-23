var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's easier to use the other delimiter.";

var s = 'string interpolation';

var s5 = 'String '
    'concatenation'
    " work even over line breaks.";

var s6 = 'The + operator ' + 'works, as well';

var s7 = '''
You can create
multi-line strings like this one.
''';
var s8 = """This is also a
multi-line strings.""";

var s9 = r'In a raw string, not even \n gets special treatment.';

// Theses work in a const string.
const aConstName = 0;
const aConstBool = true;
const aConstString = 'a constant string';

// These do NOT work in a const string.
var aNum = 0;
var aBool = true;
var aString = 'a string';
const aConstList = [1, 2, 3];

const validConstString = '$aConstName $aConstBool $aConstString';
// const invalidConstString = '$aName $aBool $aString $aConstList';

main() {
  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, which is very handy.');
  assert('That deserves all caps. ${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. STRING INTERPOLATION is very handy!');

  assert(s5 ==
      'String concatenation work even over '
          'line breaks.');
  assert(s6 == 'The + operator works, as well');

  print('s7: $s7');
  print('s8: $s8');

  print('s9: $s9');
}

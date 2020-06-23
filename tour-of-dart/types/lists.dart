var list = [1, 2, 3];

var constantList = const [1, 2, 3];
// constantList[1] = 1; // Uncommenting this cause an error.

var list2 = [0, ...list];

var listNull;
var list3 = [0, ...?listNull];

var promoActive = true;
var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (promoActive) 'Outlet',
];

var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];

main() {
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  assert(list2.length == 4);

  assert(list3.length == 1);

  assert(listOfStrings[1] == '#1');
}

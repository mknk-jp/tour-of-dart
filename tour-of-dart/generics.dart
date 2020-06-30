abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// class Foo<T extends SomeBaseClass> {
//   // Implementation goes here...
//   String toString() => "Instance of 'Foo<$T>'";
// }
// class Extender extends SomeBaseClass {...}
// var someBaseClassFoo = Foo<SomeBaseClass>();
// var extenderFoo = Foo<Extender>();

// T first<T>(List<T> ts) {
//   // Do some initial work or error checking, then...
//   T tmp = ts[0];
//   // Do some additional checking or processing...
//   return tmp;
// }

main() {
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We area people, not machines',
  };

  var nameSet = Set<String>.from(names);

  var views = Map<int, String>();

  var checkNames = List<String>();
  checkNames.addAll(['Seth', 'Kathy', 'Lars']);
  print(checkNames is List<String>);
}

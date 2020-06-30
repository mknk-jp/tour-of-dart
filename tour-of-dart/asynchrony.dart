Future checkVersion() async {
  // var version = await lookUpVersion();
  // Do something with version
}

// await for (varOrType identifier in expression) {
//   // Executes each time the stream emits a value
// }

// Future main() async {
//   // ...
//   await for (var request in requestServer) {
//     handleRequest(request);
//   }
//   // ...
// }

Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}

class WannabeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}

typedef Compare = int Function(Object a, Object b);

class SortedCollection {
  Compare compare;

  SortedCollection(this.compare);
}

// Initial, broken implementation.
int sort(Object a, Object b) => 0;

typedef CompareGeneric<T> = int Function(T a, T b);

class Television {
  /// _Deprecated: Use [turnOn] instead._
  @deprecated
  void activate() {
    turnOn();
  }

  // Turns the TV's power on.
  void turnOn() {}
}

/// A domesticated South American camelid (Lama galama).
///
/// Andean cultures have used llamas as meat and pack
/// animals since pre-Hispanic times.
class Llame {
  String name;

  /// Feeds your llama [Food].
  ///
  /// The typical llama eats one bale of hay per week.
  void feed(Food food) {
    // ...
  }

  /// Exercises your llama with an [activity] for
  /// [timeLimit] minutes.
  void exercise(Activity activity, int timeLimit) {
    // ...
  }
}

class Food {}

class Activity {}

main() {
  var wf = WannabeFunction();
  var out = wf('Hi', 'there,', 'gang');
  print(out);

  SortedCollection coll = SortedCollection(sort);
  assert(coll.compare is Function);
  assert(coll.compare is Compare);

  assert(sort is CompareGeneric<int>);
}

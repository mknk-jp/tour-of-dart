import 'dart:math';

class Point {
  double x; // Declare instance variable x, initially null.
  double y; // Declare y, initnally null.
  double z = 0; // Declare z, initially 0.

  // Point(double x, double y) {
  //   // There's a better way to do this, stay tuned.
  //   this.x = x;
  //   this.y = y;
  // }

  // Syntactic sugar for setting x and y
  // before the constructor body runs.
  Point(this.x, this.y);

  // Named constructor
  Point.origin() {
    x = 0;
    y = 0;
  }

  // Initializer list sets instance variables before
  // the constructor body runs.
  Point.fromJson(Map<String, double> json)
      : x = json['x'],
        y = json['y'] {
    print('InPoint.fromJson(): ($x, $y)');
  }

  // for during development
  Point.withAssert(this.x, this.y) : assert(x >= 0) {
    print('In Point.withAssert(): ($x, $y)');
  }

  // Delegates to the main constructor.
  Point.alongXAxis(double x) : this(x, 0);

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }

  static double distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class ImmutablePoint {
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}

class Person {
  String firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data);
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}

class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

// This class is declared abstract and thus
// can't be instantiated.
abstract class Doer {
  // Define instance varialbes and methods...

  void doSomething(); // Define an abstract method.
}

class EffectiveDoer extends Doer {
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
  }
}

class Television {
  void turnOn() {
    // _illuminateDisplay();
    // _activateIrSensor();
  }
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    // _bootNetworkInterface();
    // _initializeMemory();
    // _upgradeApps();
  }
}

class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  // Operator == and hashCode not shown. For details, see note below.
  // ...
}

enum Color { red, green, blue }

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

class Musician extends Person with Musical {
  Musician.fromJson(Map data) : super.fromJson(data) {
    print('in Musician');
  }
}

// only Musicial can use MusicalPerformer mixin
mixin MusicalPerformer on Musician {
  // ...
}

class Queue {
  static const initialCapacity = 16;
  // ...
}

main() {
  var point = Point(null, null);
  point.x = 4; // Use the setter method for x.
  assert(point.x == 4); // Use the getter method for x.
  assert(point.y == null); // Values default to null.

  Employee.fromJson({});

  var logger = Logger('UI');
  logger.log('Button clicked');

  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);

  final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));

  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);

  List<Color> colors = Color.values;
  assert(colors[2] == Color.blue);

  var aColor = Color.blue;
  switch (aColor) {
    case Color.red:
      print('Red as roses!');
      break;
    case Color.green:
      print('Green as grass!');
      break;
    default: // Without this, you see a WARNING.
      print(aColor); // 'Color.blue'
  }

  assert(Queue.initialCapacity == 16);

  var a = Point(2, 2);
  var b = Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  assert(2.8 < distance && distance < 2.9);
  print(distance);
}

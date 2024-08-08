void main() {
  // inheritence
  // polrmorphism
  // Encapsulation
  // abstraction
  // Object Is a Parent type of everty data type in dart except null

  String name = "Aptech";

  // name = 9;

  // Truck c1 = Car("Civic", 3000, 20);

  Car c1 = Car("Civic", 3000, 20);
  Truck t1 = Truck("HG-900", 1000, 3000, 0);

  // t1 = Car("Civic", 2000, 20);
//==================polrmorphism===========================

// Poly means many and morph means forms. Polymorphism is the ability of an object to take on many forms. As humans, we have the ability to take on many forms. We can be a student, a teacher, a parent, a friend, and so on. Similarly, in object-oriented programming, polymorphism is the ability of an object to take on many forms.
  Vehicle t2 = Truck("HG-900", 1000, 3000, 0);
  t2 = Car("Civic", 3000, 20);
  t2 = Ship();

  //========Object Is a Parent type of everty data type in dart except null============

  var str1 = "";

  // str1 = 0;

  Object str = "Hello, world";

  str = 90;

  str = true;

  str = new Ship();

  str = Truck("HG-900", 1000, 3000, 0);
}

// ======================inheritence======================
abstract class Vehicle {
  String name = "";
  int maxSpeed = 0;
  int currentSpeed = 0;

  void Start() {
    print("The Car $name is starting");
  }

  void Accelerate();

  void Brake();
}

class Car extends Vehicle {
  int trunkCapacity = 0;

  Car(String name, int maxSpeed, int trunkCapacity) {
    this.name = name;
    this.maxSpeed = maxSpeed;
    this.currentSpeed = 0;
    this.trunkCapacity = trunkCapacity;
  }
  @override
  void Accelerate() {
    this.currentSpeed += 20;
  }

  @override
  void Brake() {
    this.currentSpeed -= 20;
  }
}

class Truck extends Vehicle {
  int loadingCapacity = 0;
  int abc = 0;

  Truck(String name, int maxSpeed, int loadingCapacity, int abc) {
    this.name = name;
    this.maxSpeed = maxSpeed;
    this.currentSpeed = 0;
    this.loadingCapacity = loadingCapacity;
    this.abc = abc;
  }
  @override
  void Accelerate() {
    this.currentSpeed += 40;
  }

  @override
  void Brake() {
    this.currentSpeed -= 40;
  }
}

class Ship extends Vehicle {
  @override
  void Accelerate() {
    // TODO: implement Accelerate
  }

  @override
  void Brake() {
    // TODO: implement Brake
  }

  @override
  void Start() {
    super.Start();
    print("hello world");
  }
}
void main() {
  Car c1 = Car("car1", 300, 4);
  Car c2 = Car("car2", 200, 4);
  Car c3 = Car("car3", 780, 6);
  Car c4 = Car("car4", 400, 4);
  Car c5 = Car("car5", 600, 4);

//=====================Class modifiers=====================

// abstract
// base
// final
// interface
// sealed
// mixin
}

abstract class Vehicle {
  String name = "";
  int currentSpeed = 0;
  int maxSpeed = 0;

  void acceleration() {
    currentSpeed += 20;
    print("The current speed is $currentSpeed");
  }

  void brake() {
    currentSpeed -= 20;
    print("The current speed is $currentSpeed");
  }
}

class Car extends Vehicle {
  int noOfSeats = 0;

  Car(String name, int maxSpeed, int noOfSeats) {
    this.name = name;
    this.maxSpeed = maxSpeed;
    this.noOfSeats = noOfSeats;
  }
}

class Truck extends Vehicle {
  int loadingCapacity = 0;

  Truck(String name, int maxSpeed, int loadingCapacity) {
    this.name = name;
    this.maxSpeed = maxSpeed;
    this.loadingCapacity = loadingCapacity;
  }
}
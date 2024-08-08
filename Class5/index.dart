void main() {
// Access Modifiers _
// Getters and setters
// implements (interface)
// property overriding
// method overriding

  print(
      "=======================Getters and setters=================================");

  Car c1 = Car("Tesla model x", 3000);

  print(c1.Accelerate());
  print(c1.Accelerate());
  print(c1.Accelerate());
  print(c1.Brake());
  print(c1.Brake());
  print(c1.Accelerate());

  Car c2 = Car("Tesla model x", 3000);

  print(c2.currentSpeed);

  c2._maxSpeed = 0;
  c2._maxSpeed = 5000000;
}

class Car {
  //properties (holds data for the object)
  String _name = "";
  int _maxSpeed = 0;
  int currentSpeed = 0;

// =======================Getters and setters=================================

//Getters
  int get getMaxSpeed {
    return _maxSpeed;
  }

//setters
  set setMaxSpeed(int value) {
    if (value > 200 && value < 600) {
      _maxSpeed = value;
    } else {
      print("Invalid value for max speed $value");
    }
  }

//Getters

  String get getName {
    return _name;
  }

//setters
  set setName(String value) {
    if (value.length > 3 && value.length < 20) {
      _name = value;
    } else {
      print("Invalid value for name $value");
    }
  }

//constructor
  Car(String name, int maxSpeed) {
    this.setName = name;
    this.setMaxSpeed = maxSpeed;
    this.currentSpeed = 0;
  }

  //methods(defines behavior of the object)
  void Start() {
    print("The Car $_name is starting");
  }

  String Accelerate() {
    if (currentSpeed < _maxSpeed) {
      currentSpeed += 20;
      return "The Car $_name is accelerating at $currentSpeed kph";
    } else {
      return "The Car $_name is at max Speed ($_maxSpeed)";
    }
  }

  String Brake() {
    if (currentSpeed > 0) {
      currentSpeed -= 20;
      return "The Car $_name is accelerating at $currentSpeed kph";
    } else {
      return "The Car $_name has stopped";
    }
  }
}

abstract class Vehicle {
//properties (holds data for the object)
  String name = "";
  int maxSpeed = 0;
  int currentSpeed = 0;

  //methods(defines behavior of the object)
  //concerete methods
  void Start() {
    print("The Car $name is starting");
  }

// //abstract methods
//   String Accelerate();

// //abstract methods
//   String Brake();
}

abstract interface class IVehicle {
  int perAccelerateSpeed = 0;

//abstract methods
  String Accelerate();

//abstract methods
  String Brake();
}

class Car2 extends Vehicle {
//properties (holds data for the object)
  int trunckcapacity = 0;
  int perAccelerateSpeed = 40;

  //constructor
  Car2(String name, int maxSpeed, int trunckcapacity) {
    this.name = name;
    this.maxSpeed = maxSpeed;
    this.currentSpeed = 0;
    this.trunckcapacity = trunckcapacity;
  }

  //methods(defines behavior of the object)
  @override
  String Accelerate() {
    if (currentSpeed < maxSpeed) {
      currentSpeed += perAccelerateSpeed;
      return "The Car $name is accelerating at $currentSpeed kph";
    } else {
      return "The Car $name is at max Speed ($maxSpeed)";
    }
  }

  @override
  String Brake() {
    if (currentSpeed > 0) {
      currentSpeed -= perAccelerateSpeed;
      return "The Car $name is accelerating at $currentSpeed kph";
    } else {
      return "The Car $name has stopped";
    }
  }
}

class Bike extends Vehicle {
  //properties (holds data for the object)

  String sideStandType = "";
  int perAccelerateSpeed = 20;

  //constructor
  Bike(String name, int maxSpeed, String sideStandType) {
    this.name = name;
    this.maxSpeed = maxSpeed;
    this.currentSpeed = 0;
    this.sideStandType = sideStandType;
  }

  //methods(defines behavior of the object)
  @override
  String Accelerate() {
    if (currentSpeed < maxSpeed) {
      currentSpeed += perAccelerateSpeed;
      return "The Car $name is accelerating at $currentSpeed kph";
    } else {
      return "The Car $name is at max Speed ($maxSpeed)";
    }
  }

  @override
  String Brake() {
    if (currentSpeed > 0) {
      currentSpeed -= perAccelerateSpeed;
      return "The Bike $name is accelerating at $currentSpeed kph";
    } else {
      return "The Bike $name has stopped";
    }
  }
}

class Truck extends Vehicle {
  //properties (holds data for the object)

  int loadingCapacity = 0;
  int perAccelerateSpeed = 50;

  //constructor
  Truck(String name, int maxSpeed, int loadingCapacity) {
    this.name = name;
    this.maxSpeed = maxSpeed;
    this.currentSpeed = 0;
    this.loadingCapacity = loadingCapacity;
  }

  //methods(defines behavior of the object)
  @override
  String Accelerate() {
    if (currentSpeed < maxSpeed) {
      currentSpeed += perAccelerateSpeed;
      return "The Truck $name is accelerating at $currentSpeed kph";
    } else {
      return "The Truck $name is at max Speed ($maxSpeed)";
    }
  }

  @override
  String Brake() {
    if (currentSpeed > 0) {
      currentSpeed -= perAccelerateSpeed;
      return "The Truck $name is accelerating at $currentSpeed kph";
    } else {
      return "The Truck $name has stopped";
    }
  }
}

class Ship extends Vehicle implements IVehicle {
  @override
  int perAccelerateSpeed = 10;

  @override
  String Accelerate() {
    if (currentSpeed < maxSpeed) {
      currentSpeed += perAccelerateSpeed;
      return "The Car $name is swiming at $currentSpeed kph";
    } else {
      return "The Car $name is at max Speed ($maxSpeed)";
    }
  }

  @override
  String Brake() {
    if (currentSpeed > 0) {
      currentSpeed -= perAccelerateSpeed;
      return "The Car $name is swimming at $currentSpeed kph";
    } else {
      return "The Car $name has stopped";
    }
  }

  @override
  void Start() {
    super.Start();
    print("The Car $name is starting 2.0");
    print("The Car $name is starting 3.0");
  }
}
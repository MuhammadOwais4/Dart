void main() {
// OOP
// Classes And Object
// Constructor With positional parameters , arguments
// Constructor With named parameters , arguments
// Static methods And Static Variables , Properties
// abstract classes
// Extend a class
// inheritance
// mixin
//============================= Classes=============================

  print(
      "===========================OOP (Classes And Objects)========================");

  String str = "Hello world";

  Employee e1 = new Employee("Ali", "Python Developer", 30000);
  e1.name = "Ali";
  e1.designation = "Python Developer";
  e1.salary = 90000;

  Employee e2 = Employee("A.Wahab", "React Developer", 50000);
  Employee e3 = Employee("Wajid", "Angular Developer", 70000);
  Employee e4 = Employee("Shams", "Laravel Developer", 45000);
  Employee e5 =
      Employee("Omair", "Database Adminstrator", 60000, country: "India");

  e1.tellInfo();
  e2.tellInfo();
  e3.tellInfo();
  e4.tellInfo();
  e5.tellInfo();

  Employee e6 = Employee("Shams", "Laravel Developer", 45000);

  print(Employee.companyName);

  print(MyMaths.DivideTwoNumbers(2, 1));
//============================= mixin=============================
  // Vehicle v = Vehicle(); // Mixins can't be instantiated.
}

//============================= Classes=============================
class Employee {
  //members of class
  //properties (holds data for the object)
  //methods  (defines the behavior of the object)

  //types of members of class
  //1) Instance member (object)
  //2) Static member (class)

  static String companyName = "Mango"; // Static member (class)
  String name = ""; // Instance / object member
  String designation = ""; // Instance / object member
  int salary = 0; // Instance / object member
  String country = "Pakistan"; // Instance / object member

  void tellInfo() {
    // Instance /object member
    print("========================Tell information========================");
    print("The name of the employee is: $name");
    print("The designation of the employee is: $designation");
    print("The salary of the employee is: $salary ");
  }

  //=============================Default Constructor (Empty constructor)=============================
  // Employee() {}

  // Employee() {
  //   // Constructors can't have a return type.
  //   print("constructor called");
  // }

  //=============================Parameterized Constructor=============================
  // Employee(String name, String designation, int Salary) {
  //   this.name = name;
  //   this.designation = designation;
  //   this.salary = Salary;
  // }

//======================== Constructor With named parameters , arguments========================
  Employee(String name, String designation, int Salary, {String country = ""}) {
    this.name = name;
    this.designation = designation;
    this.salary = Salary;
    if (country != "") {
      this.country = country;
    }
  }
}

class MyMaths {
  //============================Static properties============================
  static const double PI = 3.142;
  //============================Static Methods============================
  static double AddTwoNumbers(double a, double b) {
    return a + b;
  }

  static double SubtractTwoNumbers(double a, double b) {
    return a - b;
  }

  static double MultiplyTwoNumbers(double a, double b) {
    return a * b;
  }

  static double DivideTwoNumbers(double a, double b) {
    return a / b;
  }
}

//============================= inheritance=============================
//==================Parent Class , base class , super class==================
abstract class Emp {
  String name = "";
  String designation = "";

//concrete function / method
  void tellbasicInfo() {
    print("========================Tell information========================");
    print("The Name Is $name");
    print("The designation Is $designation");
  }

//abstrat function / method
  void calculatesalary();
}

//==================child Class , sub class==================
class PartTimeEmployee extends Emp {
  int perHourSalary = 0;
  int hourWorked = 0;

  PartTimeEmployee(
      String name, String designation, int perHourSalary, int hourWork) {
    this.name = name;
    this.designation = designation;
    this.perHourSalary = perHourSalary;
    this.hourWorked = hourWork;
  }
  @override
  void calculatesalary() {
    print("The Total Salary Of $name Is: ${perHourSalary * hourWorked}");
  }
}

class FullTimeEmployee extends Emp {
  int salary = 0;
  int bonus = 0;

  FullTimeEmployee(String name, String designation, int salary, int bonus) {
    this.name = name;
    this.designation = designation;
    this.salary = salary;
    this.bonus = bonus;
  }
  @override
  void calculatesalary() {
    print("The Total Salary Of $name Is: ${salary + bonus}");
  }
}

class Intern extends Emp {
  @override
  void calculatesalary() {}
}

// class Vehicle {
//   String name = "";
//   String color = "";
//   int speed = 0;

//   void start() {
//     print("$name is Starting");
//   }

//   void acceleration() {
//     this.speed += 20;
//     print("$name is accelerating at ${speed} kph");
//   }

//   void brake() {
//     this.speed -= 20;
//   }
// }

// class Car extends Vehicle {
//   int TrunckCapacity = 0;
// }

// class Truck extends Vehicle {
//   int loadingCapacity = 0;
// }

//============================= mixin=============================

mixin Vehicle {
  String name = "";
  String color = "";
  int speed = 0;

  void start() {
    print("$name is Starting");
  }

  void acceleration() {
    this.speed += 20;
    print("$name is accelerating at ${speed} kph");
  }

  void brake() {
    this.speed -= 20;
  }
}

class Car with Vehicle {
  int TrunckCapacity = 0;
}

class Truck with Vehicle {
  int loadingCapacity = 0;
}
import 'b.dart';

void main() {
  print("========================abstract================================");
  //1)Object
  // Vehicle v1 = Vehicle(); // Abstract classes can't be instantiated.
  print("========================base================================");
  //1)Object

  // Vehicle v1 = Vehicle();
  print("========================interface================================");
  // Vehicle v1 = Vehicle();
  print(
      "========================abstract interface================================");
  //Vehicle v1 = Vehicle();//Abstract classes can't be instantiated. Try creating an instance of a concrete subtype.
  print("========================final================================");

  // Vehicle v1 = Vehicle();
  print("========================sealed================================");
  //Vehicle v1 = Vehicle(); //Abstract classes can't be instantiated.Try creating an instance of a concrete subtype.
  print("========================mixin================================");
  //Vehicle v1 = Vehicle(); //Mixins can't be instantiated.
  print("========================mixin class================================");
  Vehicle v1 = Vehicle();
}

//========================abstract================================
//2)extends
// class Car extends Vehicle {
//   @override
//   void moveForward(int meters) {}
// }

//3)===================implements===================

// class Bus implements Vehicle {
//   @override
//   void moveForward(int meters) {
//     // TODO: implement moveForward
//   }
// }

//abstract class
// 1)Object  No
// 2)extends  Yes
// 3)implements  Yes

//======================================base======================================
//2)extends

// final class Car extends Vehicle {}

//3)implements

//class Bus implements Vehicle {} //The class 'Vehicle' can't be implemented outside of its library because it's a base class

//base class
// 1)Object  Yes
// 2)extends  Yes
// 3)implements  no

//======================================interface======================================

//2)extends

// final class Car extends Vehicle {} //The class 'Vehicle' can't be extended outside of its library because it's an interface class.

//3)implements

// class Bus implements Vehicle {
//   @override
//   void moveForward(int meters) {
//     // TODO: implement moveForward
//   }
// }

//interface class
// 1)Object  Yes
// 2)extends  no
// 3)implements Yes

//======================================abstract interface======================================

//2)extends

//class Car extends Vehicle {} //The class 'Vehicle' can't be extended outside of its library because it's an interface class.

//3)implements

// class Bus implements Vehicle {
//   @override
//   void moveForward(int meters) {
//     // TODO: implement moveForward
//   }
// }

//abstract interface class
// 1)Object  no
// 2)extends  no
// 3)implements Yes

//======================================final======================================

//2)extends

//class Car extends Vehicle{} //The class 'Vehicle' can't be extended outside of its library because it's a final class.

//3)implements

// The class 'Vehicle' can't be implemented outside of its library because it's a final class.
// class Bus implements Vehicle {
//   @override
//   void moveForward(int meters) {
//     // TODO: implement moveForward
//   }
// }

//abstract interface class
// 1)Object  yes
// 2)extends  no
// 3)implements no

//======================================sealed======================================

//2)extends

//class Car extends Vehicle{} //The class 'Vehicle' can't be extended, implemented, or mixed in outside of its library because it's a sealed class.

//3)implements

//The class 'Vehicle' can't be extended, implemented, or mixed in outside of its library because it's a sealed class.
// class Bus implements Vehicle {

// }

//abstract interface class
// 1)Object  yes
// 2)extends  no
// 3)implements no

//======================================mixin======================================

// class Car with Vehicle {}


//2)extends

// class Car extends Vehicle{} 

//3)implements

// The class 'Vehicle' can't be extended, implemented, or mixed in outside of its library because it's a sealed class.
// class Bus implements Vehicle {

// }

//abstract interface class
// 1)Object  yes
// 2)extends  yes (mixed in)
// 3)implements yes

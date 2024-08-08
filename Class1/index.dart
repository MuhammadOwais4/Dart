//Entry Point
void main() {
  print("========================variables========================");

  String name = "Aptech";
  String name2 = 'Aptech';
  int age = 19;
  double percentage = 55.8;
  bool isPaid = true;

  print(
      "========================nullable variables  (?)========================");
  String? data = "";
  data = null;
  data = "data";

  // data = 9;

  int? num = 9;

  num = null;

  String? data2;
  data2 = "hello world";
  data2 = null;

  print(data2?.toUpperCase());
  // print(data2!.toUpperCase());

  print("========================var========================");

  var v = "Hello world";

  // v = 889;

  var v1 = 90;
  var v2 = false;

  // v2 = 7;

  print("========================dynamic========================");

  dynamic d = "Hello, world!";

  d = 66;

  d = true;

  d = null;

  d = 99.86;

  print("========================Final and const========================");

  const String str = "Hello, world!";

  // str = "Aptech"; //Constant variables can't be assigned a value.

  final String str2 = "Hello, world!";
  // str2 = ""; // The final variable 'str2' can only be set once.

  //const compile time constant
  //final run time constant

  const double d2 = 9;

  final double d3;

  // const DateTime dte = DateTime.now();
  final DateTime dte = DateTime.now();

  print(dte);

  print("========================operators========================");
//============================operators============================
// Arithmetic operators(+ , - , * , / , %)
  print(
      "========================Arithmetic operators(+ , - , * , / , %)========================");

  print(10 % 2);
  print(101 % 2);

  int num1 = 10;
  int num2 = 22;
  int num3 = 33;
  int num4 = 54;

  print(num1 + num3);

  print(num4 - num3);

  print(num1 / num3);

  print(num1 * num3);

// relational / comparision operators
// < , > , <= , >= , != , ==
  print(
      "========================relational / comparision operators========================");

// relational / comparision operators
// < , > , <= , >= , == , !=

  int num5 = 10;
  int num6 = 22;
  int num7 = 10;
  int num8 = 54;

  print(num5 > num8); //false
  print(num5 < num8); //true
  print(num5 >= num7); //true
  print(num5 <= num8); //true
  print(num5 != num8); //true

  print("=========================Logical operators========================");
// Logical operators
// && , || , !

  print(!true);
  print(!false);

  print(num5 < num8 && num8 == num7);
  // print(true && false);
  // print(false);

  // int num5 = 10;
  // int num6 = 22;
  // int num7 = 10;
  // int num8 = 54;

  print(num5 < num8 && num8 != num7);

  print(num5 < num8 && num8 != num7 && num8 > num6);

  print(num5 < num8 || num8 == num7);

  print(num5 > num8 || num8 == num7);

  print(num5 < num8 && (num5 > num8 || num8 == num7) && num8 > num6);
  // print(true && false && num8 > num6);
  // print(false);

  print(num5 < num8 && (num5 > num8 || num8 != num7) && num8 > num6);

  print(
      "========================assignment operators (+= , -= , *= , /= , = )========================");
//assignment operators (+= , -= , *= , /= , = )

  String str6 = "Hello, world!";

  int num10 = 90;

  num10 = num10 + 10;

  print(num10);

  num10 += 10;
  print(num10);

  double num11 = 90;

  num11 = num11 - 10;

  num11 -= 10;

  num11 *= 10;

  num11 /= 10;
}
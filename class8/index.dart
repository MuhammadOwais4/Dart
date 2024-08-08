void main() {
// Lists
// Sets
// Generic Sets
// Maps
// Generic Maps
// Map Methods
// generic class
// enums
// error handling , exception handling , try catch
// truncate divide
// Records
// For Each
// Map
// String Methods
// runtimeType
  print(
      "=================================== Lists ===================================");

  List fruits = ["mango", "Apple", "Kiwi", true, false, 55, 8.9, null];
  print(fruits[1]);
  print(
      "=================================== Generic Lists ===================================");
  List<String> fruitsStr = ["mango", "Apple", "Kiwi"];

  print(
      "=================================== Sets ===================================");

  Set constantSet = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
    'astatine',
  };

// constantSet.add('helium'); // This line will cause an error.

  print(
      "=================================== Generic Sets ===================================");

  Set<String> constantSetGen = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
    'astatine',
  };

  print(
      "=================================== Maps ===================================");

  Map data = {
    "name": "Ali",
    "age": 12,
    "subject": "CS",
    9: "hello",
    true: true
  };

  print(data);
  print(data["name"]);
  print(data["age"]);

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  print(
      "=================================== Generic Maps ===================================");

  Map<String, dynamic> genMap = {
    "name": "Ali",
    "age": 20,
    "isFeesPaid": true,
  };

  print(genMap["name"]);
  print(genMap["isFeesPaid"]);

  print(
      "=================================== Map Methods ===================================");

  Map<String, Object> employee = {
    "name": "Ali",
    "age": 20,
    "gender": "Male",
    "designation": "React Developer",
    "salary": 400000,
    "isCarGiven": true,
  };

  print(employee.length);

  print(employee.isEmpty);
  print(employee.isNotEmpty);

  print(employee.containsKey("isCarGiven"));
  print(employee.containsKey("xyz"));
  print(employee.containsKey(20));

  print(employee.containsValue(20));

  print(employee.keys);
  print(employee.values);

  employee.keys.forEach((element) {
    print("The Value Of $element is ${employee[element]}");
  });

  employee.remove("isCarGiven");

  employee.keys.forEach((element) {
    print("The Value Of $element is ${employee[element]}");
  });

  print(
      "=================================== runtimeType ===================================");

  String name = "hello world";

  String pizza = "🍕🍕🍕";

  int age = 19;

  double percentage = 90.999;

  bool isCarGiven = false;

  List<String> fruitsStr2 = ["mango", "Apple", "Kiwi"];

  final constantSet2 = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  Set Set2 = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };

  Map<String, Object> employee2 = {
    "name": "Ali",
    "age": 20,
    "gender": "Male",
    "designation": "React Developer",
    "salary": 400000,
    "isCarGiven": true,
  };

  print(name.runtimeType);
  print(pizza.runtimeType);
  print(age.runtimeType);
  print(percentage.runtimeType);
  print(isCarGiven.runtimeType);

  print(fruitsStr2.runtimeType);
  print(constantSet2.runtimeType);
  print(Set2.runtimeType);
  print(employee2.runtimeType);

  Employee e1 = Employee("Omair", 10);

  print(e1.runtimeType);

  print(
      "=================================== truncate divide ===================================");

  print(10 / 2);
  print(10 / 3);
  print(10 / 0);

  print(10 ~/ 3);
  // print(10 ~/ 0);

  print(
      "=================================== error handling , exception handling , try catch,finally ===================================");

  // print("Before error");
  // print(10 ~/ 0);
  // print("after error");

  // print("Before error");
  // try {
  //   print("i am try");
  //   print(10 ~/ 0);
  //   print("try done");
  // } catch (err) {
  //   print("i am catch");
  //   print(err.toString());
  // }
  // print("after error");

  print("Before error");
  try {
    print("i am try");
    print(10 ~/ 0);
    print("try done");
  } catch (err) {
    print("i am catch");
    print(err.toString());
  } finally {
    print("i am finally done");
  }
  print("after error");

  print(
      "=================================== Records ===================================");

  List<int> rgbList = [220, 120, 56, 55, 87, 98];

  (int, int, int) rgb = (
    220,
    56,
    47,
  );

  print(
      "=================================== String Methods ===================================");

  String str = "Hello, world";

  print(str.toUpperCase());

  String strUpper = "HELLO, WORLD";

  print(strUpper.toLowerCase());

  String str2 = "Lorem ipsum dolor";

  print(str2.length);
  print(str2[2]);

  String email =
      "                    muhammadumer765@gmail.com                    ";

  print(email.trim());
  print(email.trimRight());
  print(email.trimLeft());

  String str4 = "hello";

  print(str4.padLeft(10, "+"));
  print(str4.padRight(10, "K"));

  String str6 = "Lorem ipsum dolor";
  print(str6.contains("sum"));
  print(str6.contains("summ"));

  String sentence = "hello Omair Is a great man";

  print(sentence.split("e"));
  print(sentence.split(" "));

  List<String> words = sentence.split(" ");

  print(words.length);

  print(str6.startsWith("L"));
  print(str6.endsWith("."));
  print(str6.endsWith("lor"));

  print(
      "=================================== enums ===================================");

  PlaneTicket p1 = PlaneTicket("PKR76", "99", SeatType.back);
}

enum SeatType { Middle, Front, back }

class PlaneTicket {
  String ticketNo = "";
  String seatrNo = "";
  SeatType? seatType;

  PlaneTicket(String ticketNo, String seatrNo, SeatType seatType) {
    this.ticketNo = ticketNo;
    this.seatrNo = seatrNo;
    this.seatType = seatType;
  }

  void checkMeal() {
    switch (this.seatType) {
      case SeatType.back:
        print("Burger");
        break;
      case SeatType.Middle:
        print("pizza");
        break;
      case SeatType.Front:
        print("maggi");
        break;
      default:
        print("nothing");
    }
  }
}

class Employee {
  String name = "";
  int age = 0;

  Employee(String name, int age) {
    this.name = name;
    this.age = age;
  }
}
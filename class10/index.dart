void main() {
// Pattern Types
// synchronous programming
// Asynchronous programming
// Future handling using then catch
// Future handling using async await
// handling delayed Future
// dynamic  future
// generic future
// Future returning list
// Future returning list of class
// delayed Future
// pub.dev

  print("=========================Pattern Types========================");

  List<String> fruits = ["mango", "apple", "pineapple", "kiwi", "cherry"];

  String m = fruits[0];
  String a = fruits[1];
  String p = fruits[2];

  print(m);
  print(a);
  print(p);

  var [m1, a1, p1, ...rest] = fruits;
  print(m1);
  print(a1);
  print(p1);
  print(rest);

//=========================== synchronous programming===========================
//=========================== Asynchronous programming===========================

  print(
      "=========================synchronous programming========================");

  print("print # 1");
  print("Fetching Data from the database taking 20 seconds...");
  print("print # 3");

  print(
      "=========================Asynchronous programming========================");

  print(getStr());

  // print(getFuture());

  print(
      "=========================Future handling using then catch========================");

  print("before future");

  getFuture().then((e) {
    print(e);
  }).catchError((err) {
    print(err);
  });

  print("after future");

  getGenericFutureDouble()
      .then(
        (value) => print(value),
      )
      .catchError((err) => print(err));

  getGenericFutureGenericList().then((e) {
    e.forEach(
      (element) {
        print(element);
      },
    );
  }).catchError((err) => print(err.toString()));

  getFutureStudentList().then((e) {
    e.forEach((std) {
      std.tellInfo();
    });
  }).catchError((error) => print(error.toString()));

  getStudentFuture().then((stud) {
    stud.tellInfo();
  }).catchError((error) {
    print(error);
  });

  print(
      "=========================handling delayed Future using then catch========================");

  getDelayedFuture().then((e) => print(e)).catchError((err) => print(err));

  print(
      "=========================Future handling using async await========================");
  handleFuture();

  handleListFuture();
}

// =========================Future handling using async await========================

Future<void> handleFuture() async {
  try {
    print("✔✔");
    var data = await getFuture();
    print(data + "handles with async await thanks");
  } catch (err) {
    print(err);
  }
}

Future<void> handleListFuture() async {
  try {
    var data = await getGenericFutureGenericList();

    data.forEach(
      (element) => print(element),
    );
  } catch (err) {
    print(err);
  }
}

String getStr() {
  return "This is A String";
}

//===========================Future<dynamic>========================
Future getFuture() {
  return Future(
    () {
      return "This is a future string";
    },
  );
}

//===========================Generic Future========================

Future<String> getGenericFuture() {
  return Future(
    () => "This is a generic string Future",
  );
}

Future<bool> getGenericFutureBool() {
  return Future(
    () => true,
  );
}

Future<double> getGenericFutureDouble() {
  return Future(
    () => 99.8,
  );
}

Future<List> getGenericFutureList() {
  return Future(
    () => [2, "Hello, world"],
  );
}

Future<List<String>> getGenericFutureGenericList() {
  return Future(
    () => ["mango", "pineApple", "apple"],
  );

  

  // throw Exception("some error");
}

Future<Student> getStudentFuture() {
  return Future(
    () {
      return Student(name: "Ali", age: 20);
    },
  );
}


Future<List<Student>> getFutureStudentList() {
  return Future(
    () {
      return [
        Student(name: "John", age: 18),
        Student(name: "Bob", age: 22),
        Student(name: "Alice", age: 25)
      ];
    },
  );
}

class Student {
  String name = "";
  int age = 0;

  Student({required this.name, required this.age});

  void tellInfo() {
    print("This is a student with name $name\nAnd age $age");
  }
}

//===========================Generic Delayed Future========================

Future<String> getDelayedFuture() {
  // return Future(()=> "");
  return Future.delayed(
    Duration(seconds: 5),
    () => "This is very delayed Future",
  );


}
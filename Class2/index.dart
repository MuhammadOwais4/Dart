void main() {
// concatination
// multi line string
// Escape Sequence Characters
// LOOPS
// CONDITIONAL STATEMENTS
// IF Else
// Switch Case
// Turnary Operators


// ==============================concatination==============================
  print(
      "==============================concatination==============================");
  String fName = "Aptech";
  String lName = "Gls";

  print(fName + " " + lName);

  String name = "Ali";
  int age = 20;

  print("The Name Is " + name + " And Age Is " + age.toString());
  print("The Name Is $name and Age Is $age");
  print("The Name Is $name and Age Is ${age + 1}");

// multi line string

  print("===========================multi line string========================");

  String ml =
      "Get started with Bootstrap,\nthe world’s most popular framework for building responsive,\nmobile-first sites, with jsDelivr and a template starter page.";

  String ml1 = """Get started with Bootstrap,
the world’s most popular framework for building responsive,
mobile-first sites, with jsDelivr and a template starter page.""";

  print(ml1);

  print("""Get started with Bootstrap,
the world’s most popular framework for building responsive,
mobile-first sites, with jsDelivr and a template starter page.""");

  print(''' Get started with Bootstrap,
the world’s most popular framework for building responsive,
mobile-first sites, with jsDelivr and a template starter page.''');

// =============================LOOPS=============================

//for , while , do while

  for (int i = 0; i < 10; i++) {
    print("I am a for loop $i");
  }

  int j = 0;
  while (j < 10) {
    print("I am a while loop $j");
    j++;
  }

  print("============================do while============================");
// do while
  int k = 0;
  while (k > 10) {
    print("I am a while loop $k");
    k++;
  }

  do {
    print("I am a do while loop $k");
  } while (k > 10);

// CONDITIONAL STATEMENTS
// IF Else
// Switch Case
// Turnary Operators
  print(
      "============================CONDITIONAL STATEMENTS============================");
  print("============================IF Else============================");

  int age2 = 9;

  if (age2 >= 18) {
    print("You can drive");
  } else {
    print("You can not drive");
  }

  double percentage = 60;

  if (percentage >= 80) {
    print("Your grade Is A+1");
  } else if (percentage >= 70) {
    print("Your grade Is A");
  } else if (percentage >= 60) {
    print("Your grade Is B");
  } else {
    print("Fail");
  }
// =====================================Switch Case=====================================

  print(
      "=====================================Switch Case=====================================");

  int day = 2;

  if (day == 1) {
    print("Monday");
  } else if (day == 2) {
    print("Tuesday");
  } else if (day == 3) {
    print("Wednesday");
  } else if (day == 4) {
    print("Thursday");
  } else if (day == 5) {
    print("Friday");
  } else if (day == 6) {
    print("Saturday");
  } else if (day == 7) {
    print("Sunday");
  } else {
    print("Invalid Day");
  }

  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }

  double percentage2 = 99.8;

  print(
      "========================Turnary Operators=============================");

  int age3 = 18;

  // if (age3 >= 18) {
  //   print("You can drive");
  // } else {
  //   print("You can not drive");
  // }

  print(age3 >= 18 ? "You can drive" : "You can not drive");
}
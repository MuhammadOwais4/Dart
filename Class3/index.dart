void main() {
// Escape Sequence Characters
// functions
// functions with parameters / arguments
// function with return
// positional parameters
// Named parameter
// Named / positional  parameters
// required Named   parameters
// nullable Named parameters
// FUNCTIONS RETURNS
// ========================Escape Sequence Characters========================
//1)\n
//2)\t

  print("Hello,\nworld!");
  print("Hello\tworld!");

  print("Hello \"world!\"");
  print('Hello "world!"');

  print("Hello 'world!'");
  print('Hello \'world!\'');

  print('Hello \\world!\\');
  print("========================functions========================");

  // int num1 = 9;
  // int num2 = 20;

  // int result = num1 + num2;

  // print(result);

  // int num3 = 9;
  // int num4 = 20;

  // int result2 = num1 + num2;

  // print(result2);

  sumTwoNumbers(2, 2);
  sumTwoNumbers(10, 56);
  sumTwoNumbers(12, 77);
  sumTwoNumbers(67, 11);

  print(addTwoNumbers(4, 7));

  String name = "Ali";
  double englishMarks = 90;
  double urduMarks = 40;
  double mathsMarks = 70;

  // double totalMarksObt = englishMarks + urduMarks + mathsMarks;

  // double percentage = (totalMarksObt / 300) * 100;

  // String grade;

  // if (percentage >= 80) {
  //   grade = "A+1";
  // } else if (percentage >= 70) {
  //   grade = "A";
  // } else if (percentage >= 60) {
  //   grade = "B";
  // } else {
  //   grade = "FAIL";
  // }

  // print("=====================Student Result =================");
  // print("The Name Of the Student Is $name");
  // print("Marks Of English Are $englishMarks");
  // print("Marks Of Urdu Are $urduMarks");
  // print("Marks Of Maths Are $mathsMarks");
  // print("Percentage Is ${percentage.toString().substring(0, 5)} %");
  // print("Grade Is $grade");

  calculateGrade("Ali", 80, 70, 80);
  calculateGrade("Usman", 40, 50, 60);
  calculateGrade("Shams", 60, 40, 70);
  calculateGrade("A.Wahab", 70, 80, 80);
  calculateGrade("Taha", 20, 70, 40);
  print(
      "============================// positional parameters=============================");
  // calculateGradeP(20, "Taha", 70, 40);
  print(
      "============================// Named parameters=============================");

  calculateGrade("Ali", 80, 70, 80);
  calculateGradeN(
      urduMarks: 30,
      name: "Ali",
      englishMarks: 40,
      mathsMarks: 60,
      classSection: "A");

  calculateGradeNRP(
    "Ali",
    englishMarks: 50,
    mathsMarks: 50,
    urduMarks: 60,
  );
}

// ========================functions========================

// returnType functionName () {}
void sumTwoNumbers(int x, int y) {
  print(x + y);
}

String addTwoNumbers(int x, int y) {
  return "The Sum Of $x and $y is ${x + y}";
}

void calculateGrade(
    String name, double englishMarks, double urduMarks, double mathsMarks) {
  double totalMarksObt = englishMarks + urduMarks + mathsMarks;

  double percentage = (totalMarksObt / 300) * 100;

  String grade;

  if (percentage >= 80) {
    grade = "A+1";
  } else if (percentage >= 70) {
    grade = "A";
  } else if (percentage >= 60) {
    grade = "B";
  } else {
    grade = "FAIL";
  }

  print("=====================Student Result =================");
  print("The Name Of the Student Is $name");
  print("Marks Of English Are $englishMarks");
  print("Marks Of Urdu Are $urduMarks");
  print("Marks Of Maths Are $mathsMarks");
  print("Percentage Is ${percentage.round()} %");
  print("Grade Is $grade");
}

//============================// positional parameters=============================

void calculateGradeP(
    String name, double englishMarks, double urduMarks, double mathsMarks) {
  double totalMarksObt = englishMarks + urduMarks + mathsMarks;

  double percentage = (totalMarksObt / 300) * 100;

  String grade;

  if (percentage >= 80) {
    grade = "A+1";
  } else if (percentage >= 70) {
    grade = "A";
  } else if (percentage >= 60) {
    grade = "B";
  } else {
    grade = "FAIL";
  }

  print("=====================Student Result =================");
  print("The Name Of the Student Is $name");
  print("Marks Of English Are $englishMarks");
  print("Marks Of Urdu Are $urduMarks");
  print("Marks Of Maths Are $mathsMarks");
  print("Percentage Is ${percentage.round()} %");
  print("Grade Is $grade");
}

//============================Named parameters=============================
void calculateGradeN(
    {String name = "",
    String classSection = "",
    double englishMarks = 0,
    double urduMarks = 0,
    double mathsMarks = 0}) {
  double totalMarksObt = englishMarks + urduMarks + mathsMarks;

  double percentage = (totalMarksObt / 300) * 100;

  String grade;

  if (percentage >= 80) {
    grade = "A+1";
  } else if (percentage >= 70) {
    grade = "A";
  } else if (percentage >= 60) {
    grade = "B";
  } else {
    grade = "FAIL";
  }

  print("=====================Student Result =================");
  print("The Name Of the Student Is $name");
  if (classSection.length > 0) {
    print("The Section Of the Student Is $classSection");
  }
  print("Marks Of English Are $englishMarks");
  print("Marks Of Urdu Are $urduMarks");
  print("Marks Of Maths Are $mathsMarks");
  print("Percentage Is ${percentage.round()} %");
  print("Grade Is $grade");
}

//============================Required Named parameters=============================

void calculateGradeNR(
    {required String name,
    required String classSection,
    required double englishMarks,
    required double urduMarks,
    required double mathsMarks}) {
  double totalMarksObt = englishMarks + urduMarks + mathsMarks;

  double percentage = (totalMarksObt / 300) * 100;

  String grade;

  if (percentage >= 80) {
    grade = "A+1";
  } else if (percentage >= 70) {
    grade = "A";
  } else if (percentage >= 60) {
    grade = "B";
  } else {
    grade = "FAIL";
  }

  print("=====================Student Result =================");
  print("The Name Of the Student Is $name");
  if (classSection.length > 0) {
    print("The Section Of the Student Is $classSection");
  }
  print("Marks Of English Are $englishMarks");
  print("Marks Of Urdu Are $urduMarks");
  print("Marks Of Maths Are $mathsMarks");
  print("Percentage Is ${percentage.round()} %");
  print("Grade Is $grade");
}

//============================Required Named / position parameters =============================

void calculateGradeNRP(String name,
    {String classSection = "",
    required double englishMarks,
    required double urduMarks,
    required double mathsMarks}) {
  double totalMarksObt = englishMarks + urduMarks + mathsMarks;

  double percentage = (totalMarksObt / 300) * 100;

  String grade;

  if (percentage >= 80) {
    grade = "A+1";
  } else if (percentage >= 70) {
    grade = "A";
  } else if (percentage >= 60) {
    grade = "B";
  } else {
    grade = "FAIL";
  }

  print("=====================Student Result =================");
  print("The Name Of the Student Is $name");
  if (classSection.length > 0) {
    print("The Section Of the Student Is $classSection");
  }
  print("Marks Of English Are $englishMarks");
  print("Marks Of Urdu Are $urduMarks");
  print("Marks Of Maths Are $mathsMarks");
  print("Percentage Is ${percentage.round()} %");
  print("Grade Is $grade");
}
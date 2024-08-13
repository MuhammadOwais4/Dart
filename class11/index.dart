void main() {
  String str = "hello world";
  print(str.toUpperCase());

  String str3 =
      "lorem Ipsum is simply dummy text of the printing and typesetting industry";
  String str4 =
      "it is a long established fact that a reader will be distracted by";

  print(formatString(str3));
  print(formatString(str4));

  print(str4.formatString());

  print(str4.formatString2());

  int num1 = 90;

  print(num1.isEven);
  print(num1.isOdd);


  int num2 = 91;

  print(num2.addTwo());
}

String formatString(String str) {
  return str[0].toUpperCase() + str.substring(1) + ".";
}

//==================================Extensions================================
//==================================Strings Extensions================================
extension StringExt on String {
  String formatString() {
    return this[0].toUpperCase() + this.substring(1) + ".";
  }

// [hello ,how, are, you]
  String formatString2() {
    List<String> words = this.split(" ");
    List<String> upperWords = [];
    words.forEach(
      (element) {
        upperWords.add(element[0].toUpperCase() + element.substring(1));
      },
    );
    return upperWords.join(" ");
  }
}

extension intExtensions on int {
  int addTwo() => this + 2;
  int addTwo2() {
    return this + 2;
  }
}
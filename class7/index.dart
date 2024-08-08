void main() {
//Collections
//1)List
//2)Set
//3)Map

  String fruit1 = "mango";
  String fruit2 = "pineapple";
  String fruit3 = "kiwi";

  print("===========================Collections ============================");
  print("============================List=============================");

  List lst = ["mango", "pineapple", 3.6, false, "kiwi"];

  List fruits = ["mango", "pineapple", "kiwi"];

  print(fruits);

  print(
      "============================Printing Array Elements Using For Loop=============================");

  for (int i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }

  print(
      "============================Printing Array Elements Using For each Loop=============================");

  fruits.forEach((fruit) {
    print(fruit);
  });

  print(
      "============================List Methods=============================");

  List allFruits = [
    "Watermelon",
    "Strawberry",
    "Pineapple",
    "Papaya",
    "Orange",
    "Mango",
    "Kiwi",
    "Blueberry",
    "Banana",
    "Apple",
    "Currant",
    "Fig",
    "Gooseberry",
    "Date",
    "Olive",
    "Tangerine",
    "Apricot"
  ];

//length ==> count of elements in an array or list
//index ==> position of elements in an array or list

  print(allFruits[2]);

  print("================length================");
  print(allFruits.length);

  print("================first================");
  print(allFruits.first);

  print("================last================");
  print(allFruits.last);

  print("================isEmpty================");
  print(allFruits.isEmpty);

  print("================isNotEmpty================");
  print(allFruits.isNotEmpty);

  print("================add================");

  allFruits.add("peach");

  allFruits.forEach((element) {
    print(element);
  });
  print(allFruits.length);

  print(allFruits[17]);

  print("================remove================");

  allFruits.remove("Mango");

  allFruits.forEach((element) {
    print(element);
  });
  print(allFruits.length);

  print("================insert================");

  allFruits.add("tomato");

  allFruits.insert(1, "chilli 🌶🌶");

  allFruits.forEach((element) {
    print(element);
  });

  print("================removeAt================");
  allFruits.removeAt(2);

  allFruits.forEach((element) {
    print(element);
  });

  print("================addAll================");

  allFruits.addAll(["onion", "potato", "garlic"]);

  allFruits.forEach((element) {
    print(element);
  });

  print("================insertAll================");

  allFruits.insertAll(2, ["ginger", "sugar", "wheat"]);

  allFruits.forEach((element) {
    print(element);
  });

  print("================removeRange================");

  allFruits.removeRange(1, 6);

  allFruits.forEach((element) {
    print(element);
  });

  print("================removeLast================");

  allFruits.removeLast();

  print("================contains================");
  print(allFruits.contains("peach"));

  if (allFruits.contains("Watermelon")) {
    print("fruit is present in the current list");
  } else {
    print("fruit is not present in the current list");
  }

  print("================elementAt================");
  print(allFruits.elementAt(5));
  print(allFruits[5]);
  print(allFruits[17]);

  print("================reversed================");
  allFruits.reversed.forEach((element) {
    print(element);
  });

  List lst2 = [true, null, 99, 89.9, "hello world"];

  print(
      "============================Generic Lists=============================");

  List<String> strs = ["a", "b", "c", "d"];

  List<double> percentages = [100, 88.8, 67.87, 87.67, 57.87];

  List<bool> booools = [
    true,
    false,
    false,
    false,
    false,
    false,
    true,
    false,
    false
  ];
  print(
      "============================Lists With Class=============================");

  Player p1 = Player("shams", "m4");
  Player p2 = Player("owais", "ak47");
  Player p3 = Player("omair", "kar98");

  List<Player> players = [p1, p2, p3, Player("A.Wahab", "M24")];

  players.forEach((element) {
    element.shooting();
  });

  players.forEach((element) {
    print("================================================================");
    print("The name of player is ${element.name}");
    print("The gun of player is ${element.gun}");
  });

  print(
      "==============================firstWhere==================================");
  // Player oP = players.firstWhere((element) => element.name == "owais");
  Player oP = players.firstWhere((element) {
    return element.name == "owais";
  });

  print(oP.name);
  print("============================Set=============================");

  List<String> moreFruits = [
    "apple",
    "orange",
    "banana",
    "pineapple",
    "pear",
    "orange"
  ];

  moreFruits.forEach((element) {
    print(element);
  });

  print("=========================================================");
// Two elements in a set literal shouldn't be equal.
// Change or remove the duplicate element.

  Set dSet = {"apple", false, 44.8};

  print("============================Generic Set=============================");
  Set<String> moreFruitsSet = {
    "apple",
    "orange",
    "banana",
    "pineapple",
    "pear",
    "orange"
  };

  moreFruitsSet.forEach((element) {
    print(element);
  });
}

class Player {
  String name = "";
  String gun = "";

  void shooting() {
    print("The Player $name is shooting with $gun");
  }

  Player(String name, String gun) {
    this.name = name;
    this.gun = gun;
  }
}
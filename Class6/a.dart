class Employee {
  // Private properties
  int? _id;
  String? _name;

// Getter method to access private property _id
  int get getId {
    return _id!;
  }

// Getter method to access private property _name
  String get getName {
    return _name!;
  }

// Setter method to update private property _id
  set setId(int id) {
    this._id = id;
  }

// Setter method to update private property _name
  set setName(String name) {
    if (name.length > 0 && name.length < 100) {
      this._name = name;
    }
  }
}

void main() {
  Employee ee = Employee();

  ee._id = 9;
}
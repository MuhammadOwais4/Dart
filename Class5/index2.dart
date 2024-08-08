import 'index.dart';
void main() {
  Car c2 = Car("Civic", 280);
  // c2._maxSpeed;

  print(c2.getMaxSpeed);
  c2.setMaxSpeed = 900;
  print(c2.getMaxSpeed);
}
import 'model2.dart';

abstract class Vehicle {}

final class CarModel extends Vehicle {
  final String? name;
  final int? year;
  final String? category;

  CarModel({this.name, this.year, this.category});

  void fromJson() {}

  void toJson() {}
}

void main() {
  final ford = CarModel(name: 'Ford', year: 2023, category: 'SUV');
  final bmw = CarModel(name: 'BMW', year: 2024, category: 'Hybrid SUV');
  final bmw1 = CarModel(name: 'BMW', year: 2024, category: 'Hybrid SUV');
  List<CarModel> carList = [bmw, bmw1];

  final user = Response(name: 'Hasan');
  final user1 = Response(name: 'Hasan');

  print(user == user1);
}

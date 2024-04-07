/// Nesne
class Person {
  final String name;

  Person(this.name);
}

/// Sınıf
class Service {
  String url = 'https://';

  void fetch() => print(url);
}

/// Kalıtım
/// Polimorfizm
abstract class Vehicle {
  String? model;

  void start();
  void stop();
}

final class Car implements Vehicle {
  @override
  String? model;

  @override
  void start() {
    print('Started');
  }

  @override
  void stop() {
    print('Car Stopped');
  }
}

final class Bus extends Vehicle {
  @override
  void start() {}

  @override
  void stop() {
    print('Bus Stopped');
  }
}

/// Polimorfizm
final class Calculate {
  void calc(int a, int b) => print(a + b);
}

/// Kapsamlama
class PopupManager {
  String? _popupModel;

  void openPopup(String platform) {
    _setPopupModel(platform);
    print(_popupModel);
  }

  void _setPopupModel(String platform) {
    if (platform == 'IOS') {
      _popupModel = 'Cupertino';
    } else {
      _popupModel = 'Material';
    }
  }
}

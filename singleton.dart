final class SingletonOne {
  SingletonOne._();

  static final SingletonOne _instance = SingletonOne._();

  static SingletonOne get instance => _instance;

  void hello() {
    print('Hello');
  }
}

final class SingletonTwo {
  SingletonTwo._();

  static SingletonTwo? _instance;

  static SingletonTwo get instance {
    _instance ??= SingletonTwo._();
    return _instance!;
  }
}

final class SingletonThree {
  SingletonThree._();

  static SingletonThree? _instance;

  static SingletonThree? get instance => _instance;

  static void init() {
    _instance ??= SingletonThree._();
  }

  factory SingletonThree() {
    _instance ??= SingletonThree._();
    return _instance!;
  }
}

final class SingletonFour {
  SingletonFour._() {
    _data = null;
  }
  static final SingletonFour _instace = SingletonFour._();

  static SingletonFour get instance => _instace;

  String? _data;

  factory SingletonFour(String data) {
    _instace._data = data;
    return _instace;
  }

  String? get data => _data;
}

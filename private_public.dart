sealed class SealedClass {
  String _name = 'Class Name';
  String namePublic = 'Class Name';

  String get name {
    return _name;
  }

  set name(String name) => _name = name;
}

abstract final class _PrivateClass extends SealedClass {}

final class PublicClass extends _PrivateClass {}

void main(List<String> args) {
  final privaClass = PublicClass();
}

String _globalVar = 'Global Var';

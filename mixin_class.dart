final class NewClass extends AbsClass with NewMixin, NewMixin2, NewMixin3 {
  @override
  void call() {
    print('HelloWorld');
  }
}

final class NewClass2 with NewMixin2, NewMixin3 {}

abstract class AbsClass {}

mixin NewMixin on AbsClass {
  void call() => print('NewMixin');
}

abstract mixin class NewMixin2 {
  void call2() => print('NewMixin2');
}

final class NewMixinClass with NewMixin2, NewMixin3 {}

mixin NewMixin3 {
  void call3() => print('NewMixin3');
}

void main(List<String> args) {
  final newClass = NewClass();
  // newClass.call();
  // newClass.call3();

  // final newMixin2 = NewMixin2();

  // newMixin2.call2();
}

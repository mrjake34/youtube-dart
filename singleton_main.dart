import 'singleton.dart';

void main(List<String> args) {
  // final one = SingletonOne.instance;
  // print(one);
  // SingletonOne.instance.hello();

  // final two = SingletonTwo.instance;
  // print(two);
  // SingletonThree();
  // final three = SingletonThree.instance;

  // print(three);

  final four1 = SingletonFour('Hello');
  final four2 = SingletonFour('World');
  final four = SingletonFour.instance;

  print(four.data);
}

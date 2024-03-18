final class MacOS {
  final int release;

  MacOS(this.release);

  int calculate() {
    return _CalculateYear(this.release).getReleaseTime;
  }

  String getString() {
    return _CalculateYear(this.release).getAsString;
  }
}

final class Windows {
  final int release;

  Windows(this.release);

  int calculate() {
    return _CalculateYear(this.release).getReleaseTime;
  }

  String getString() {
    return _CalculateYear(this.release).getAsString;
  }
}

extension type const _CalculateYear(int i) {
  int get getReleaseTime => 2024 - i;
  String get getAsString => i.toString();
}

void main() {
  // final macOS = MacOS(2001);
  // print(macOS.release);

  // print(macOS.calculate());
  // print(macOS.getString().runtimeType);

  // macOS.start();
  // macOS.stop();

  final String name = 'Dart';

  print(name.getFirstChar());
  print(name.getLastChar());
}

extension on MacOS {
  void start() => print('${this.runtimeType} starting');
}

extension MacOSExtension on MacOS {
  void stop() => print('${this.runtimeType} stopped');
}

extension _StringExt on String {
  String getFirstChar() => this.split('').first;
  String getLastChar() => this.split('').last;
}

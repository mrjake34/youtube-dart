import 'dart:isolate';

Future<void> main() async {
  final time = Stopwatch();
  time.start();
  print('First Func With Isolate');
  Isolate.run(() => findPrimeNumbers(1000000, 'With Isolate ${time.elapsed}'));
  print('Second Func With Isolate');
  Isolate.run(
      () => findPrimeNumbers(3000000, 'Second With Isolate ${time.elapsed}'));
  print('Second Func Without Isolate2');
  findPrimeNumbers(100000, 'Without Isolate2 ${time.elapsed}');

  time.stop();
  print('Finish ${time.elapsed}');
}

void findPrimeNumbers(int limit, String elapsed) {
  List<int> primes = [];
  for (var i = 2; i < limit; i++) {
    bool isPrime = true;
    for (var j = 2; j < i; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      primes.add(i);
    }
  }
  print('findPrimeNumbers ${primes.length} $elapsed');
}

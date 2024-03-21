final class Araba {
  final String model;

  const Araba(this.model);

  void parkEt() => print('${this.runtimeType} $model park edildi');
}

final class Insan {
  final String name;
  const Insan(this.name);

  void aractanCik() => print('${this.runtimeType} $name araçtan çıktı');

  void merdivenlerdenIn() =>
      print('${this.runtimeType} $name merdivenlerden indi');
}

final class Otopark {
  final araba = Araba('Ford F150');
  final insan = Insan('Hasan');

  void kapiAc() =>
      print('Sürücü ${insan.name} içeriye ${araba.model} aracıyla giriş yaptı');
}

final class Otopark2 {
  late final Araba araba;
  Insan? insan;

  Otopark2(this.araba);

  set insanEkle(Insan insan) => this.insan = insan;

  void kapiAc() => print(
      'Sürücü ${insan?.name} içeriye ${araba.model} aracıyla giriş yaptı');
}

void main() {
  final otopark = Otopark2(Araba('Ford Fiesta'));
  otopark.insanEkle = Insan('Ayşe');
  otopark.kapiAc();
  otopark.araba.parkEt();
  otopark.insan?.aractanCik();
  otopark.insan?.merdivenlerdenIn();
}

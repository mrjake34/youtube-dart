enum PageStatus {
  loading,
  loaded,
  failed,
}

enum Currency {
  usd(label: 'Dolar', symbol: '\$'),
  euro(label: 'Euro', symbol: '€'),
  tl(label: 'Türk Lirası', symbol: '₺'),
  ;

  final String? symbol;
  final String? label;

  const Currency({required this.symbol, required this.label});

  static final currencyLabelList =
      Currency.values.map((e) => e.symbol).toList();
  static final currencyList = Currency.values;
}

void main(List<String> args) {
  print(Currency.currencyList);
}

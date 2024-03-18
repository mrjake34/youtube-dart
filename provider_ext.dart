final class BuildContext {}

class Provider {
  static T of<T>(BuildContext context, {bool listen = true}) {
    return ProductViewModel() as T;
  }
}

extension _ProviderMixin on BuildContext {
  T watch<T>() => Provider.of<T>(this);

  T read<T>() => Provider.of<T>(this, listen: false);
}

final class ProductViewModel {
  List<Products>? _products;

  List<Products>? get products => _products;

  ProductViewModel() {
    setProducts();
  }

  void setProducts() {
    _products = [
      Products(title: 'Macbook', price: 999.99),
      Products(title: 'Monster', price: 600.99),
    ];
  }
}

final class Products {
  final String? title;
  final double? price;

  Products({this.title, this.price});
}

void main() {
  final context = BuildContext();
  final products = context.read<ProductViewModel>().products;

  print(products?.first.title);
}

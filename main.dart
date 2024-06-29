import 'private_public.dart';

void main() {
  final publicClass = PublicClass();

  publicClass.name = '';

  print(publicClass.namePublic);
}

final class NewPublicClass {}

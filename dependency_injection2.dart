import 'dart:convert';
import 'dart:io';

import 'photos_response.dart';
import 'response.dart';
import 'users_model.dart';

final class Service {
  final String url;

  Service(this.url);

  Future<Response> fetch() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(url));
    final response = await request.close();
    final responseBody = await response.transform(Utf8Decoder()).join();
    return Response.fromJson(responseBody, statusCode: response.statusCode);
  }
}

final class UserService {
  final service = Service('https://jsonplaceholder.typicode.com/users');

  Future<List<Users>> fetchUsers() async {
    final response = await service.fetch();
    if (response.data == null) return [];
    return List<Users>.from(
      json.decode(response.data!).map((e) => Users.fromJson(e)),
    );
  }
}

final class PhotoService {
  final service = Service(
      'https://api.slingacademy.com/v1/sample-data/photos?offset=0&limit=10');

  Future<List<Photos>> fetchPhotos() async {
    final response = await service.fetch();

    if (response.data == null) return [];
    final responsePhotos = PhotoResponse.fromJson(json.decode(response.data!));
    if (responsePhotos.photos == null) return [];
    return responsePhotos.photos!;
  }
}

Future<void> main() async {
  final userService = UserService();
  final photosService = PhotoService();
  final users = await userService.fetchUsers();
  final photos = await photosService.fetchPhotos();

  print(users.first);
  print(photos.first);
}

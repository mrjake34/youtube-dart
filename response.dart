final class Response {
  final String? data;
  final int? statusCode;

  Response({this.data, this.statusCode});

  factory Response.fromJson(String body, {int? statusCode}) => Response(
        data: body,
        statusCode: statusCode,
      );

  @override
  String toString() {
    return 'body: $data \n'
        'statusCode: $statusCode';
  }
}

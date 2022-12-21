class AppException implements Exception {
  final String? message;
  String? uri;
  int? code;

  AppException({this.message, this.uri, this.code});

  /// handler error API yang dapat dipanggil saat terjadi masalah untuk mengetahui masalah yang terjadi
  @override
  String toString() {
    return 'Galat API : ($code) $message [$uri]';
  }
}

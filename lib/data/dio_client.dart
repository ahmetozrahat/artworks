import 'package:dio/dio.dart';

class DioClient {
  static const String _baseUrl = "https://api.artic.edu/api/v1/";

  DioClient() {
    addInterceptor(LogInterceptor());
  }

  final Dio dio = Dio(
    BaseOptions(baseUrl: _baseUrl),
  );

  void addInterceptor(Interceptor interceptor) {
    dio.interceptors.add(interceptor);
  }
}

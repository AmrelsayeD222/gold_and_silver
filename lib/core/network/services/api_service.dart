import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  ApiServices()
    : dio = Dio(
        BaseOptions(
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
            'User-Agent': 'Mozilla/5.0',
          },
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      ) {
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );
  }
  Future<Map<String, dynamic>> get(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}

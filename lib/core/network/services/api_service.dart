import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;
  ApiServices(this._dio);

  Future<Map<String, String>> _buildHeaders() async {
    final headers = <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'User-Agent': 'Mozilla/5.0',
    };
    return headers;
  }

  Future<Options> _buildOptions() async {
    final headers = await _buildHeaders();
    return Options(headers: headers);
  }

  Future<Map<String, dynamic>> get(String url) async {
    final options = await _buildOptions();
    final response = await _dio.get(url, options: options);
    return response.data;
  }
}

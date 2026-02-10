import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;
  ApiServices(this._dio);

  Future<Map<String, String>> _buildHeaders({String? contentType}) async {
    final headers = <String, String>{
      'Accept': 'application/json',
      'Content-Type': contentType ?? 'application/json',
    };
    return headers;
  }

  Future<Options> _buildOptions({String? contentType}) async {
    final headers = await _buildHeaders(contentType: contentType);
    return Options(headers: headers);
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    required dynamic data,
  }) async {
    final options = await _buildOptions();
    final response = await _dio.post(
      'baseUrl$endPoint',
      data: data,
      options: options,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final options = await _buildOptions();
    final response = await _dio.get('baseUrl$endPoint', options: options);
    return response.data;
  }
}

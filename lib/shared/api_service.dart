import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://api.themoviedb.org/3/';
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> get(String endpoint) async {
    try {
      final response = await dio.get('$_baseUrl$endpoint');
      return response.data;
    } on DioException catch (e) {
      throw Exception('Failed to load data: ${e.message}');
    }
  }
}
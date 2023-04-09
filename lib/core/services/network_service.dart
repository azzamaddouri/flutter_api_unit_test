import 'package:dio/dio.dart';

abstract class NetworkService {
  Future<dynamic> get(String url);
  Future<dynamic> post(String url, dynamic body);
}

class NetworkServiceImpl extends NetworkService {
  // dio provides many advanced features to use than http package
  final dio = Dio();

  @override
  Future get(String url) async {
    final response = await dio.get(url);
    if (response.statusCode != 200) {
      throw Exception('Failed to fetch data');
    } else {
      return response.data;
    }
  }

  @override
  Future post(String url, body) async {
    final response = await dio.post(url, data: body);
    return response.data;
  }
}

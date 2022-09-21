import 'package:dio/dio.dart';

class CryptoEndpoint {
  final Dio _dio;

  CryptoEndpoint(this._dio);

  Future<Response> getCrypto(String id) {
    return _dio.get('/coins/$id');
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_application_2/shared/api/crypto_endpoint.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cryptoEndpointProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.coingecko.com/api/v3',
  ));
  return CryptoEndpoint(dio);
});

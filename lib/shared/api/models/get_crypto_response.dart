
import 'package:json_annotation/json_annotation.dart';

import 'crypto_market_data_response.dart';

part 'get_crypto_response.g.dart';

@JsonSerializable()
class GetCryptoResponse {
  final String id;
  final String symbol;
  final String name;
  final String image;
  final CryptoMarketDataResponse market_data;

  GetCryptoResponse({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.market_data,
  });

  factory GetCryptoResponse.fromJson(Map<String, dynamic> json) => _$GetCryptoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCryptoResponseToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_crypto_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCryptoResponse _$GetCryptoResponseFromJson(Map<String, dynamic> json) =>
    GetCryptoResponse(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      market_data: CryptoMarketDataResponse.fromJson(
          json['market_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetCryptoResponseToJson(GetCryptoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'market_data': instance.market_data,
    };

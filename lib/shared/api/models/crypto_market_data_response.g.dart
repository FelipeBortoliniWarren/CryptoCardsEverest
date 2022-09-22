// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_market_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoMarketDataResponse _$CryptoMarketDataResponseFromJson(
        Map<String, dynamic> json) =>
    CryptoMarketDataResponse(
      current_price: CryptoCurrentPriceResponse.fromJson(
          json['current_price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CryptoMarketDataResponseToJson(
        CryptoMarketDataResponse instance) =>
    <String, dynamic>{
      'current_price': instance.current_price,
    };

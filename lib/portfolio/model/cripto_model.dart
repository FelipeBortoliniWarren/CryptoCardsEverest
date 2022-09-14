import 'dart:convert';

import 'package:decimal/decimal.dart';

class CriptoModel {
  String nameCripto;
  String initialsCripto;
  String iconCripto;
  Decimal priceCripto;
  double amountCrypto;
  Decimal balanceUser = Decimal.parse('0');
  
  CriptoModel({
    required this.nameCripto,
    required this.initialsCripto,
    required this.iconCripto,
    required this.priceCripto,
    required this.amountCrypto,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'nameCripto': nameCripto});
    result.addAll({'initialsCripto': initialsCripto});
    result.addAll({'iconCripto': iconCripto});
    result.addAll({'priceCripto': priceCripto});
    result.addAll({'amountCrypto': amountCrypto});

    return result;
  }

  factory CriptoModel.fromMap(Map<String, dynamic> map) {
    return CriptoModel(
      nameCripto: map['nameCripto'] ?? '',
      initialsCripto: map['initialsCripto'] ?? '',
      iconCripto: map['iconCripto'] ?? '',
      priceCripto: map['priceCripto'] ?? '',
      amountCrypto: map['amountCrypto'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CriptoModel.fromJson(String source) => CriptoModel.fromMap(json.decode(source));
}

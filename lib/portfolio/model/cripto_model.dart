// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:decimal/decimal.dart';

class CriptoModel {
  String name;
  String initials;
  String icon;
  Decimal price;
  Decimal value = Decimal.parse('0');
  double amount;
  double variation;
  
  CriptoModel({
    required this.name,
    required this.initials,
    required this.icon,
    required this.price,
    required this.amount,
    required this.variation,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'initials': initials});
    result.addAll({'icon': icon});
    result.addAll({'price': price});
    result.addAll({'amount': amount});
    result.addAll({'variation': variation});

    return result;
  }

  factory CriptoModel.fromMap(Map<String, dynamic> map) {
    return CriptoModel(
      name: map['nameCripto'] ?? '',
      initials: map['initials'] ?? '',
      icon: map['icon'] ?? '',
      price: map['price'] ?? '',
      amount: map['amount'] ?? '', 
      variation: map['variation'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CriptoModel.fromJson(String source) => CriptoModel.fromMap(json.decode(source));
}

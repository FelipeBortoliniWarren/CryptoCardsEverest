import 'package:decimal/decimal.dart';

class CriptoModel {
  String name;
  String initials;
  String icon;
  Decimal price;
  Decimal value = Decimal.parse('0');
  double amount;
  double variation;
  List<List> historyPrice;
  
  CriptoModel({
    required this.name,
    required this.initials,
    required this.icon,
    required this.price,
    required this.amount,
    required this.variation,
    required this.historyPrice,
  });
}

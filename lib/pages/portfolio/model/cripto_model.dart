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
}

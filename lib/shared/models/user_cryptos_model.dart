import 'package:decimal/decimal.dart';

class UserCryptosModel {
  String cryptoId;
  double amount;
  Decimal value;

  UserCryptosModel({
    required this.cryptoId,
    required this.amount,
    required this.value,
  });
}

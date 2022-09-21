import 'package:decimal/decimal.dart';

class UserCryptos {
  String cryptoId;
  double amount;
  Decimal value;

  UserCryptos({
    required this.cryptoId,
    required this.amount,
    required this.value,
  });
}

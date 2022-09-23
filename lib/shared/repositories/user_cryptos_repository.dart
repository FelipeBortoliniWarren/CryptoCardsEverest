import 'package:decimal/decimal.dart';
import '../models/user_cryptos_model.dart';

class UserCryptosRepository {
  List<UserCryptosModel> getCryptosListRepository() {
    return [
      UserCryptosModel(
        cryptoId: 'bitcoin',
        amount: 3.5,
        value: Decimal.parse('0'),
      ),
      UserCryptosModel(
        cryptoId: 'ethereum',
        amount: 3.5,
        value: Decimal.parse('0'),
      ),
      UserCryptosModel(
        cryptoId: 'litecoin',
        amount: 3.5,
        value: Decimal.parse('0'),
      ),
      UserCryptosModel(
        cryptoId: 'tether',
        amount: 3.5,
        value: Decimal.parse('0'),
      ),
      UserCryptosModel(
        cryptoId: 'binancecoin',
        amount: 3.5,
        value: Decimal.parse('0'),
      ),
      UserCryptosModel(
        cryptoId: 'cardano',
        amount: 3.5,
        value: Decimal.parse('0'),
      ),
      UserCryptosModel(
        cryptoId: 'polkadot',
        amount: 3.5,
        value: Decimal.parse('0'),
      ),
      UserCryptosModel(
        cryptoId: 'dogecoin',
        amount: 3.5,
        value: Decimal.parse('0'),
      ),
    ];
  }

  Decimal calculateUserCryptoBalance(double amount, Decimal price) {
    return Decimal.parse(amount.toString()) * price;
  }
}

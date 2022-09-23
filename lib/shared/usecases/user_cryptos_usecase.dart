import 'package:decimal/decimal.dart';

import '../models/user_cryptos_model.dart';
import '../repositories/user_cryptos_repository.dart';

class UserCryptosUsecase {
  UserCryptosRepository repository = UserCryptosRepository();

  Decimal calculateUserCryptoBalance(double amount, Decimal price) {
    return repository.calculateUserCryptoBalance(amount, price);
  }

  List<UserCryptosModel> getCryptosListRepository(){
    return repository.getCryptosListRepository();
  }
}

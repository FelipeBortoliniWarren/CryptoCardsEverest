import '../models/crypto_model.dart';
import '../models/user_cryptos_model.dart';
import '../repositories/user_cryptos_repository.dart';

class UserCryptosUsecase {
  UserCryptosRepository repository = UserCryptosRepository();

  List<UserCryptosModel> getCurrentPrice(CryptoModel crypto){
    return repository.getCryptosListRepository();
  }
}

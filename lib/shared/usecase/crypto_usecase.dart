import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/shared/repo/crypto_repository.dart';

import '../model/crypto_model.dart';

class CryptoUsecase {
  CryptoRepository repository = CryptoRepository();

  Decimal getCurrentPrice(CryptoModel crypto){
    return repository.getCurrentPrice(crypto);
  }
}

import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/shared/usecase/crypto_usecase.dart';

import '../model/crypto_model.dart';

class CryptoController {
  CryptoUsecase cryptoUsecase = CryptoUsecase();

  Decimal getCurrentPrice(CryptoModel crypto){
    return cryptoUsecase.getCurrentPrice(crypto);
  }
}
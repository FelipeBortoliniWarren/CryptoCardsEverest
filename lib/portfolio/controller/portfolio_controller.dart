import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/shared/controller/crypto_controller.dart';
import 'package:flutter_application_2/shared/model/crypto_model.dart';

import '../usecase/portfolio_usecase.dart';

class PortfolioController extends CryptoController{
  final cryptoUseCase = PortfolioUseCase();

  PortfolioController() : super() {
    getCryptosList();
  }

  List<CryptoModel> getCryptosList() {
    return cryptoUseCase.getCryptosListUseCase();
  }

  double calculateBalancePortfolio(List<CryptoModel> cryptos) {
    return double.parse(cryptoUseCase.calculateBalancePortfolioUsecase(cryptos).toString());
  }

  Decimal calculateValueCrypto(Decimal priceCrypto, double amountCrypto) {
    return cryptoUseCase.calculateValueCryptoUsecase(priceCrypto, amountCrypto);
  }
}

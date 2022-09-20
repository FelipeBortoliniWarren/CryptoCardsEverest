import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/shared/model/cripto_model.dart';

import '../usecase/portfolio_usecase.dart';

class PortfolioController{
  final cryptoUseCase = PortfolioUseCase();

  PortfolioController() : super() {
    getCriptosList();
  }

  List<CriptoModel> getCriptosList() {
    return cryptoUseCase.getCriptosListUseCase();
  }

  double calculateTotalWallet(List<CriptoModel> criptos) {
    return double.parse(cryptoUseCase.calculateTotalCryptoUseCase(criptos).toString());
  }

  Decimal calculateTotalCripto(Decimal priceCripto, double amountCripto) {
    return cryptoUseCase.calculateTotalCripto(priceCripto, amountCripto);
  }
}

import 'package:decimal/decimal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_2/portfolio/model/cripto_model.dart';

import '../usecase/portfolio_usecase.dart';

class PortfolioController extends ChangeNotifier{
  final portfolioUseCase = PortfolioUseCase();

  PortfolioController() : super() {
    getCriptosList();
  }

  List<CriptoModel> getCriptosList() {
    return portfolioUseCase.getCriptosListUseCase();
  }

  double calculateTotalWallet(List<CriptoModel> criptos) {
    return double.parse(portfolioUseCase.calculateTotalPortfolioUseCase(criptos).toString());
  }

  Decimal calculateTotalCripto(Decimal priceCripto, double amountCripto) {
    return portfolioUseCase.calculateTotalCripto(priceCripto, amountCripto);
  }
}

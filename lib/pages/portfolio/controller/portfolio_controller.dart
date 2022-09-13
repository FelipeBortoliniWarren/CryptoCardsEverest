import 'package:flutter_application_2/pages/portfolio/model/cripto_model.dart';

import '../usecase/portfolio_usecase.dart';

class PortfolioController {
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
}

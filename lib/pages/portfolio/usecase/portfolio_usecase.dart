import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/pages/portfolio/model/cripto_model.dart';
import 'package:flutter_application_2/pages/portfolio/repo/portfolio_repository.dart';

class PortfolioUseCase {
  final PortfolioRepository repository = PortfolioRepository();

  List<CriptoModel> getCriptosListUseCase() {
    return repository.getCriptosListRepository();
  }

  Decimal calculateTotalPortfolioUseCase(List<CriptoModel> criptos) {
    return repository.calculateTotalPortfolioRepository(criptos);
  }
}

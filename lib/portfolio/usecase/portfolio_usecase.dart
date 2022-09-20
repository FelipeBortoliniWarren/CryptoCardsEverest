import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/shared/model/cripto_model.dart';

import '../repo/portfolio_repository.dart';

class PortfolioUseCase {
  final PortfolioRepository repository = PortfolioRepository();

  List<CriptoModel> getCriptosListUseCase() {
    return repository.getCriptosListRepository();
  }

  Decimal calculateTotalCryptoUseCase(List<CriptoModel> criptos) {
    return repository.calculateTotalCryptoRepository(criptos);
  }

  Decimal calculateTotalCripto(Decimal priceCripto, double amountCripto){
    return repository.calculateTotalCripto(priceCripto, amountCripto);
  }
}

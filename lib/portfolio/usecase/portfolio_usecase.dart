import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/shared/model/crypto_model.dart';

import '../repo/portfolio_repository.dart';

class PortfolioUseCase {
  final PortfolioRepository repository = PortfolioRepository();

  List<CryptoModel> getCryptosListUseCase() {
    return repository.getCryptosListRepository();
  }

  Decimal calculateBalancePortfolioUsecase(List<CryptoModel> cryptos) {
    return repository.calculateBalancePortfolioRepository(cryptos);
  }

  Decimal calculateValueCryptoUsecase(Decimal priceCrypto, double amountCrypto){
    return repository.calculateValueCryptoRepository(priceCrypto, amountCrypto);
  }
}

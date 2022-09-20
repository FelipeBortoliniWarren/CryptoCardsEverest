import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/shared/repo/crypto_repository.dart';
import 'package:flutter_application_2/shared/model/cripto_model.dart';

class PortfolioRepository extends CryptoRepository {

  Decimal calculateTotalCryptoRepository(List<CriptoModel> criptos) {
    Decimal walletBalance = Decimal.parse('0');
    for (CriptoModel cripto in criptos) {
      cripto.value = Decimal.parse(cripto.amount.toString()) * cripto.price;
      walletBalance += cripto.value;
    }
    return walletBalance;
  }

  Decimal calculateTotalCripto(Decimal priceCripto, double amountCripto) {
    return (priceCripto * Decimal.parse(amountCripto.toString()));
  }
}

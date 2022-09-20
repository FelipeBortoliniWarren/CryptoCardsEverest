import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/shared/repo/crypto_repository.dart';
import 'package:flutter_application_2/shared/model/crypto_model.dart';

class PortfolioRepository extends CryptoRepository {

  Decimal calculateBalancePortfolioRepository(List<CryptoModel> cryptos) {
    Decimal walletBalance = Decimal.parse('0');
    for (CryptoModel crypto in cryptos) {
      crypto.value = Decimal.parse(crypto.amount.toString()) * crypto.price;
      walletBalance += crypto.value;
    }
    return walletBalance;
  }

  Decimal calculateValueCryptoRepository(Decimal priceCrypto, double amountCrypto) {
    return (priceCrypto * Decimal.parse(amountCrypto.toString()));
  }
}

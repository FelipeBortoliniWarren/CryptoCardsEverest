import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/shared/utils/assets.dart';
import 'package:flutter_application_2/pages/portfolio/model/cripto_model.dart';

class PortfolioRepository {
  List<CriptoModel> getCriptosListRepository() {
    List<CriptoModel> criptosList = [
      CriptoModel(
        nameCripto: 'Bitcoin',
        initialsCripto: 'BTC',
        priceCripto: Decimal.parse('6557'),
        iconCripto: iconBitcoin,
        amountCrypto: 65000,
      ),
      CriptoModel(
        nameCripto: 'Ethereum',
        initialsCripto: 'ETH',
        priceCripto: Decimal.parse('7996'),
        iconCripto: iconEthereum,
        amountCrypto: 0.94,
      ),
      CriptoModel(
        nameCripto: 'Litecoin',
        initialsCripto: 'LTC',
        priceCripto: Decimal.parse('245'),
        iconCripto: iconLitecoin,
        amountCrypto: 0.82,
      ),
      CriptoModel(
        nameCripto: 'Tether',
        initialsCripto: 'USDT',
        priceCripto: Decimal.parse('290'),
        iconCripto: iconTether,
        amountCrypto: 0.3,
      ),
      CriptoModel(
          nameCripto: 'BNB',
          initialsCripto: 'BNB',
          priceCripto: Decimal.parse('500.03'),
          iconCripto: iconBnb,
          amountCrypto: 0.25),
      CriptoModel(
        nameCripto: 'Cardano',
        initialsCripto: 'ADA',
        priceCripto: Decimal.parse('980.98'),
        iconCripto: iconCardano,
        amountCrypto: 1.6,
      ),
      CriptoModel(
        nameCripto: 'Polkadot',
        initialsCripto: 'DOT',
        priceCripto: Decimal.parse('33.4'),
        iconCripto: iconPolkadot,
        amountCrypto: 2.7,
      ),
      CriptoModel(
        nameCripto: 'Dogecoin',
        initialsCripto: 'DOGE',
        priceCripto: Decimal.parse('93.5'),
        iconCripto: iconDogecoin,
        amountCrypto: 0.5,
      ),
    ];
    return criptosList;
  }

  Decimal calculateTotalPortfolioRepository(List<CriptoModel> criptos) {
    Decimal walletBalance = Decimal.parse('0');
    for (CriptoModel cripto in criptos) {
      cripto.balanceUser = Decimal.parse(cripto.amountCrypto.toString()) * cripto.priceCripto;
      walletBalance += cripto.balanceUser;
    }
    return walletBalance;
  }
}

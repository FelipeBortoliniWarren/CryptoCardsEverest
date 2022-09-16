import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/shared/utils/assets.dart';
import 'package:flutter_application_2/portfolio/model/cripto_model.dart';

class PortfolioRepository {
  List<CriptoModel> getCriptosListRepository() {
    List<CriptoModel> criptosList = [
      CriptoModel(
        name: 'Bitcoin',
        initials: 'BTC',
        price: Decimal.parse('6557'),
        icon: iconBitcoin,
        amount: 65000,
        variation: 0.5,
      ),
      CriptoModel(
        name: 'Ethereum',
        initials: 'ETH',
        price: Decimal.parse('7996'),
        icon: iconEthereum,
        amount: 0.94,
        variation: -0.5,
      ),
      CriptoModel(
        name: 'Litecoin',
        initials: 'LTC',
        price: Decimal.parse('245'),
        icon: iconLitecoin,
        amount: 0.82,
        variation: 0.5,
      ),
      CriptoModel(
        name: 'Tether',
        initials: 'USDT',
        price: Decimal.parse('290'),
        icon: iconTether,
        amount: 0.3,
        variation: -0.5,
      ),
      CriptoModel(
        name: 'BNB',
        initials: 'BNB',
        price: Decimal.parse('500.03'),
        icon: iconBnb,
        amount: 0.25,
        variation: -0.5,
      ),
      CriptoModel(
        name: 'Cardano',
        initials: 'ADA',
        price: Decimal.parse('980.98'),
        icon: iconCardano,
        amount: 1.6,
        variation: -0.5,
      ),
      CriptoModel(
        name: 'Polkadot',
        initials: 'DOT',
        price: Decimal.parse('33.4'),
        icon: iconPolkadot,
        amount: 2.7,
        variation: 0.5,
      ),
      CriptoModel(
        name: 'Dogecoin',
        initials: 'DOGE',
        price: Decimal.parse('93.5'),
        icon: iconDogecoin,
        amount: 0.5,
        variation: -0.5,
      ),
    ];
    return criptosList;
  }

  Decimal calculateTotalPortfolioRepository(List<CriptoModel> criptos) {
    Decimal walletBalance = Decimal.parse('0');
    for (CriptoModel cripto in criptos) {
      cripto.value =
          Decimal.parse(cripto.amount.toString()) * cripto.price;
      walletBalance += cripto.value;
    }
    return walletBalance;
  }

  Decimal calculateTotalCripto(Decimal priceCripto, double amountCripto) {
    return (priceCripto * Decimal.parse(amountCripto.toString()));
  }
}

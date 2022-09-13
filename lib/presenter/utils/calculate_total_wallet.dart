import '../../core/base_cripto.dart';

double calculateTotalWallet(List<BaseCripto> criptos) {
  double walletBalance = 0;
  for (BaseCripto cripto in criptos) {
    walletBalance += cripto.valueCripto * cripto.amountCrypto;
  }
  return walletBalance;
}

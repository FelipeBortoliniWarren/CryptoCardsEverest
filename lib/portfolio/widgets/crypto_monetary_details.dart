import 'package:flutter/material.dart';
import '../../shared/utils/format_currency.dart';
import '../../shared/utils/styles.dart';
import '../controller/portfolio_controller.dart';
import '../../shared/model/crypto_model.dart';
import 'hide_monetary.dart';

class CryptoMonetaryDetails extends StatelessWidget {
  final CryptoModel cryptoInfo;

  const CryptoMonetaryDetails({
    Key? key,
    required this.cryptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PortfolioController cryptoContorller = PortfolioController();
    double totalCrypto = cryptoContorller.calculateValueCrypto(
        cryptoInfo.price, cryptoInfo.amount).toDouble();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HideMonetary(
          smallWidth: 110,
          bigWidth: 160,
          height: 18,
          text: formatCurrency.format(totalCrypto),
          fontSize: 19,
          align: Alignment.centerRight,
          color: colorTextBlack,
        ),
        const SizedBox(height: 3),
        HideMonetary(
          smallWidth: 70,
          bigWidth: 160,
          height: 18,
          text: '${cryptoInfo.amount} ${cryptoInfo.initials}',
          fontSize: 15,
          align: Alignment.centerRight,
          color: colorTextGrey,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../shared/utils/styles.dart';
import '../controller/portfolio_controller.dart';
import '../model/cripto_model.dart';
import 'hide_monetary.dart';

class CriptoMonetaryDetails extends StatelessWidget {
  final CriptoModel criptoInfo;

  const CriptoMonetaryDetails({
    Key? key,
    required this.criptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PortfolioController criptoContorller = PortfolioController();
    double totalCripto = criptoContorller.calculateTotalCripto(
        criptoInfo.priceCripto, criptoInfo.amountCrypto).toDouble();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        HideMonetary(
          smallWidth: 110,
          bigWidth: 160,
          height: 18,
          text: totalCripto.toString(),
          fontSize: 19,
          align: Alignment.centerRight,
          color: colorTextBlack,
        ),
        const SizedBox(height: 5),
        HideMonetary(
          smallWidth: 70,
          bigWidth: 160,
          height: 18,
          text: '${criptoInfo.amountCrypto} ${criptoInfo.initialsCripto}',
          fontSize: 15,
          align: Alignment.centerRight,
          color: colorTextGrey,
        ),
      ],
    );
  }
}

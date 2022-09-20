import 'package:flutter/material.dart';
import '../../shared/utils/app_colors.dart';
import '../../shared/utils/format_currency.dart';
import '../../shared/models/crypto_model.dart';
import 'hide_monetary.dart';

class CryptoMonetaryDetails extends StatelessWidget {
  final CryptoModel cryptoInfo;

  const CryptoMonetaryDetails({
    Key? key,
    required this.cryptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HideMonetary(
          smallWidth: 110,
          bigWidth: 160,
          height: 18,
          text: formatCurrency.format(cryptoInfo.value.toDouble()),
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

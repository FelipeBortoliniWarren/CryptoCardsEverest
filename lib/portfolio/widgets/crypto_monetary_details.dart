import 'package:flutter/material.dart';
import 'package:flutter_application_2/shared/models/user_crypto_model.dart';
import '../../shared/utils/app_colors.dart';
import '../../shared/utils/format_currency.dart';
import '../../shared/models/crypto_model.dart';
import '../../shared/widgets/hide_monetary.dart';

class CryptoMonetaryDetails extends StatelessWidget {
  final CryptoModel cryptoInfo;
  final UserCryptoModel userCrypto;

  const CryptoMonetaryDetails({
    Key? key,
    required this.cryptoInfo,
    required this.userCrypto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HideMonetary(
          hiderWidth: 110,
          textWidth: 160,
          height: 18,
          text: formatCurrency.format(userCrypto.value.toDouble()),
          fontSize: 19,
          align: Alignment.centerRight,
          color: colorTextBlack,
        ),
        const SizedBox(height: 3),
        HideMonetary(
          hiderWidth: 70,
          textWidth: 160,
          height: 18,
          text: '${userCrypto.amount} ${cryptoInfo.symbol.toUpperCase()}',
          fontSize: 15,
          align: Alignment.centerRight,
          color: colorTextGrey,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../details/model/arguments.dart';
import '../../details/providers/providers.dart';
import '../../shared/utils/styles.dart';
import '../../shared/widgets/circle_crypto_icon.dart';
import '../../shared/model/crypto_model.dart';
import 'crypto_monetary_details.dart';

class CryptoInfos extends HookConsumerWidget {
  final CryptoModel cryptoInfo;

  const CryptoInfos({
    Key? key,
    required this.cryptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historyInterval = ref.watch(historyIntervalProvider);

    return ListTile(
      onTap: () {
        historyInterval.setPricesHistory(cryptoInfo.historyPrice);
        historyInterval.changeDaysHistoryInterval(5);
        historyInterval.setMinXChart();
        historyInterval.setMinYChart();
        Navigator.pushNamed(
          context,
          '/details',
          arguments: Arguments(cryptoInfo),
        );
      },
      leading: CircleIconCrypto(icon: cryptoInfo.icon),
      title: Text(
        cryptoInfo.initials,
        style: const TextStyle(fontSize: 19),
      ),
      subtitle: Text(
        cryptoInfo.name,
        style: const TextStyle(
          fontSize: 15,
          color: colorTextGrey,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CryptoMonetaryDetails(
            cryptoInfo: cryptoInfo,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_right),
            iconSize: 20,
            splashRadius: 20,
          ),
        ],
      ),
    );
  }
}

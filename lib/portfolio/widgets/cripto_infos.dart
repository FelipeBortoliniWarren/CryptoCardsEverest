import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../details/model/arguments.dart';
import '../../details/providers/providers.dart';
import '../../shared/utils/styles.dart';
import '../../shared/widgets/circle_cripto_icon.dart';
import '../../shared/model/cripto_model.dart';
import 'cripto_monetary_details.dart';

class CriptoInfos extends HookConsumerWidget {
  final CriptoModel criptoInfo;

  const CriptoInfos({
    Key? key,
    required this.criptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historyInterval = ref.watch(historyIntervalProvider);
    
    return ListTile(
      onTap: () {
        historyInterval.setPricesHistory(criptoInfo.historyPrice);
        historyInterval.changeDaysHistoryInterval(5);
        historyInterval.setMinXChart();
        historyInterval.setMinYChart();
        Navigator.pushNamed(
          context,
          '/details',
          arguments: Arguments(
            criptoInfo
            // criptoInfo.name,
            // criptoInfo.initials,
            // criptoInfo.icon,
            // criptoInfo.price,
            // criptoInfo.amount,
            // criptoInfo.variation,
            // criptoInfo.value,
          ),
        );
      },
      leading: circleIconCripto(criptoInfo.icon),
      title: Text(
        criptoInfo.initials,
        style: const TextStyle(fontSize: 19),
      ),
      subtitle: Text(
        criptoInfo.name,
        style: const TextStyle(
          fontSize: 15,
          color: colorTextGrey,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CriptoMonetaryDetails(
            criptoInfo: criptoInfo,
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

import 'package:flutter/material.dart';

import '../../shared/utils/styles.dart';
import '../../shared/widgets/circle_cripto_icon.dart';
import '../model/cripto_model.dart';
import 'cripto_monetary_details.dart';

class CriptoInfos extends StatelessWidget {
  final CriptoModel criptoInfo;

  const CriptoInfos({
    Key? key,
    required this.criptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
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

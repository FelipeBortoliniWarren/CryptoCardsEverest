import 'package:flutter/material.dart';

import '../../shared/utils/styles.dart';
import '../model/cripto_model.dart';
import 'cripto_monetary_details.dart';

class CriptoDetails extends StatelessWidget {
  final CriptoModel criptoInfo;

  const CriptoDetails({
    Key? key,
    required this.criptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: backgroundIconsCripto,
        radius: 24,
        child: Image(
          image: AssetImage(criptoInfo.iconCripto),
        ),
      ),
      title: Text(
        criptoInfo.initialsCripto,
        style: const TextStyle(fontSize: 19),
      ),
      subtitle: Text(
        criptoInfo.nameCripto,
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

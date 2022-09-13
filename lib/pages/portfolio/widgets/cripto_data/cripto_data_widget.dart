import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/portfolio/model/cripto_model.dart';

import 'widgets/item_cripto_widget.dart';

class CriptoData extends StatelessWidget {
  final CriptoModel criptoInfo;

  const CriptoData({
    Key? key,
    required this.criptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(thickness: 1),
        ItemCripto(criptoInfo: criptoInfo),
      ],
    );
  }
}

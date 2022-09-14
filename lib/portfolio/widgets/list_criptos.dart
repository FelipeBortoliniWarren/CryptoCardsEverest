import 'package:flutter/material.dart';
import 'package:flutter_application_2/portfolio/model/cripto_model.dart';

import 'cripto_details.dart';

class ListCriptos extends StatelessWidget {
  final CriptoModel criptoInfo;

  const ListCriptos({
    Key? key,
    required this.criptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(thickness: 1),
        CriptoDetails(criptoInfo: criptoInfo),
      ],
    );
  }
}

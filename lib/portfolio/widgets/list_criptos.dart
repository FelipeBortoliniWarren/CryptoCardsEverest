import 'package:flutter/material.dart';
import 'package:flutter_application_2/portfolio/model/cripto_model.dart';

import '../../cripto_details/view/cripto_details_page.dart';
import 'cripto_infos.dart';

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
        InkWell(
          onTap: () => Navigator.pushNamed(
            context,
            '/details',
            arguments: Arguments(
              criptoInfo.name,
              criptoInfo.initials,
              criptoInfo.icon,
              criptoInfo.price,
              criptoInfo.amount,
              criptoInfo.variation,
            ),
          ),
          child: CriptoInfos(criptoInfo: criptoInfo),
        ),
      ],
    );
  }
}

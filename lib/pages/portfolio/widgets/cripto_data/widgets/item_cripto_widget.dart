import 'package:flutter/material.dart';

import '../../../model/cripto_model.dart';
import 'value_amount_cripto_widget.dart';

class ItemCripto extends StatelessWidget {
  final CriptoModel criptoInfo;

  const ItemCripto({
    Key? key,
    required this.criptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
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
          color: Color.fromARGB(255, 136, 134, 134),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ValueAmountCripto(
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

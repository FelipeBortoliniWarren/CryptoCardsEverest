import 'package:flutter/material.dart';

import '../../shared/models/crypto_model.dart';
import '../../shared/models/list_cryptos_model.dart';
import 'crypto_infos.dart';

class PortolioBody extends StatelessWidget {
  const PortolioBody({
    Key? key,
    required this.cryptos,
  }) : super(key: key);

  final List<CryptoModel> cryptos;
  // final ListCryptosModel cryptos;

  @override
  Widget build(BuildContext context) {
    // return CryptoInfos(cryptoInfo: cryptos);
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: cryptos.length,
      separatorBuilder: (context, index) => const Divider(thickness: 1),
      itemBuilder: ((context, index) {
        CryptoModel? crypto = cryptos[index];
        return index == 0
            ? Column(
                children: [
                  const Divider(thickness: 1),
                  CryptoInfos(cryptoInfo: crypto),
                ],
              )
            : CryptoInfos(cryptoInfo: crypto);
      }),
    );
  }
}

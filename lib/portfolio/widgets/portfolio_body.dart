import 'package:flutter/material.dart';

import 'package:flutter_application_2/shared/models/user_crypto_model.dart';

import '../../shared/models/crypto_model.dart';
import '../../shared/models/list_cryptos_model.dart';
import '../../shared/models/user_list_cryptos_model.dart';
import '../../shared/usecases/user_cryptos_usecase.dart';
import 'crypto_infos.dart';

class PortolioBody extends StatelessWidget {
  final List<CryptoModel> cryptos;
  final UserListCryptosModel userCryptos;
  final UserListCryptosUsecase listCryptoUserProvider;

  const PortolioBody({
    Key? key,
    required this.cryptos,
    required this.userCryptos,
    required this.listCryptoUserProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    listCryptoUserProvider.calculateUserCryptoBalance(cryptos, userCryptos);

    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: cryptos.length,
      separatorBuilder: (context, index) => const Divider(thickness: 1),
      itemBuilder: ((context, index) {
        CryptoModel? crypto = cryptos[index];
        String id = '';
        UserCryptoModel userCrypto;
        id = crypto.id;
        userCrypto = userCryptos.listCryptos
            .firstWhere((element) => element.cryptoId == id);
        return index == 0
            ? Column(
                children: [
                  const Divider(thickness: 1),
                  CryptoInfos(
                    cryptoInfo: crypto,
                    userCrypto: userCrypto,
                  ),
                ],
              )
            : CryptoInfos(
                cryptoInfo: crypto,
                userCrypto: userCrypto,
              );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/balance_user/balance_user_widget.dart';
import '../../../core/base_cripto.dart';
import 'widgets/cripto_data/cripto_data_widget.dart';
import '../../../core/providers.dart';

class WalletPage extends HookConsumerWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final assetCriptos = ref.watch(criptosInfoProvider);

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: BalanceUser(),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: assetCriptos.length,
        itemBuilder: ((context, index) {
          BaseCripto cripto = assetCriptos[index];
          return CriptoData(criptoInfo: cripto);
        }),
      ),
    );
  }
}

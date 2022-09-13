import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/balance_user/balance_user_widget.dart';
import '../model/cripto_model.dart';
import '../widgets/cripto_data/cripto_data_widget.dart';
import '../../../shared/utils/providers.dart';

class PortfolioPage extends HookConsumerWidget {
  const PortfolioPage({super.key});

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
        itemCount: assetCriptos.getCriptosList().length,
        itemBuilder: ((context, index) {
          CriptoModel cripto = assetCriptos.getCriptosList()[index];
          return CriptoData(criptoInfo: cripto);
        }),
      ),
    );
  }
}

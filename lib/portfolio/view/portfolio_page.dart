import 'package:flutter/material.dart';
import 'package:flutter_application_2/shared/providers/crypto_provider.dart';
import '../../shared/providers/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/widgets/bottom_nav_bar.dart';
import '../controller/portfolio_controller.dart';
import '../widgets/header_portfolio.dart';
import '../widgets/portfolio_body.dart';

class PortfolioPage extends StatefulHookConsumerWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  static const route = '/portfolio';

  @override
  ConsumerState<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends ConsumerState<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    final assetCryptos = PortfolioController();
    final visible = ref.watch(visibleProvider.state);

    final getCryptoProvider = ref.watch(cryptoProvider);

    // final cryptosList = assetCryptos.getCryptosList();

    // for(CryptoModel crypto in cryptosList){
    //   crypto.price = assetCryptos.getCurrentPrice(crypto);
    //   crypto.value = assetCryptos.calculateCryptoValue(crypto.price, crypto.amount);
    // }

    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(160),
      //   child: HeaderPortfolio(
      //     changeVisibility: () {
      //       setState(() {
      //         visible.state = !visible.state;
      //       });
      //     },
      //     // cryptoInfos: cryptosList,
      //   ),
      // ),
      // ),
      body: Center(
        child: getCryptoProvider.when(
            data: (cryptos) => PortolioBody(cryptos: cryptos),
            error: ((error, stackTrace) => const Text('Erro!')),
            loading: () => const CircularProgressIndicator()),
      ),
      bottomNavigationBar: const BottomNavBar(indexSelected: 0),
    );
  }
}

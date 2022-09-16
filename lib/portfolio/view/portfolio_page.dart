import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/widgets/bottom_nav_bar.dart';
import '../provider/provider.dart';
import '../widgets/header_portfolio.dart';
import '../model/cripto_model.dart';
import '../widgets/list_criptos.dart';
import '../../shared/providers/providers.dart';

class PortfolioPage extends StatefulHookConsumerWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  static const route = '/portfolio';

  @override
  ConsumerState<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends ConsumerState<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    final assetCriptos = ref.watch(criptosInfoProvider);
    final visible = ref.watch(visibleProvider.state);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: HeaderPortfolio(
          changeVisibility: () {
            setState(() {
              visible.state = !visible.state;
            });
          },
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: assetCriptos.getCriptosList().length,
        itemBuilder: ((context, index) {
          CriptoModel cripto = assetCriptos.getCriptosList()[index];
          return ListCriptos(criptoInfo: cripto);
        }),
      ),
      bottomNavigationBar: const BottomNavBar(indexSelected: 0),
    );
  }
}

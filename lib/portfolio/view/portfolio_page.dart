import 'package:flutter/material.dart';
import 'package:flutter_application_2/portfolio/widgets/cripto_infos.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/widgets/bottom_nav_bar.dart';
import '../provider/provider.dart';
import '../widgets/header_portfolio.dart';
import '../model/cripto_model.dart';
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
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: assetCriptos.getCriptosList().length,
        separatorBuilder: (context, index) => const Divider(thickness: 1),
        itemBuilder: ((context, index) {
          CriptoModel cripto = assetCriptos.getCriptosList()[index];
          return CriptoInfos(criptoInfo: cripto);
        }),
      ),
      bottomNavigationBar: const BottomNavBar(indexSelected: 0),
    );
  }
}

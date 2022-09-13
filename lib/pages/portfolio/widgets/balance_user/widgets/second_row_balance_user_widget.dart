import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../controller/portfolio_controller.dart';
import '../../../../../shared/utils/providers.dart';
import '../../scroll_text_widget.dart';
import '../../hide_monetary_widget.dart';

class SecondRowBalanceUserWidget extends StatefulHookConsumerWidget {
  const SecondRowBalanceUserWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<SecondRowBalanceUserWidget> createState() =>
      _SecondRowBalanceUserWidgetState();
}

class _SecondRowBalanceUserWidgetState
    extends ConsumerState<SecondRowBalanceUserWidget> {
  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'pt-BR');
    final visible = ref.watch(visibleProvider.state);
    PortfolioController criptoContorller = PortfolioController();
    double totalBalance = criptoContorller.calculateTotalWallet(criptoContorller.getCriptosList());

    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          visible.state
              ? ScrollText(
                  width: 310,
                  align: Alignment.centerLeft,
                  widget: Text(
                    formatCurrency.format(totalBalance),
                    style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              : const HideMonetary(
                  width: 200,
                  height: 39,
                ),
          Text(
            'Valor total de moedas',
            style: GoogleFonts.montserrat(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
              letterSpacing: -1,
            ),
          ),
        ],
      ),
    );
  }
}

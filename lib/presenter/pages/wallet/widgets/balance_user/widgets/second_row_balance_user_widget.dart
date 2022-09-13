import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../../../core/criptos_info.dart';
import '../../../../../../core/providers.dart';
import '../../../../../shared/scroll_text_widget.dart';
import '../../../../../utils/calculate_total_wallet.dart';
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
    double totalBalance = calculateTotalWallet(criptos);

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

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../../../core/base_cripto.dart';
import '../../../../../../core/providers.dart';
import '../../hide_monetary_widget.dart';
import '../../../../../shared/scroll_text_widget.dart';

class ValueAmountCripto extends HookConsumerWidget {
  final BaseCripto criptoInfo;

  const ValueAmountCripto({
    Key? key,
    required this.criptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visible = ref.watch(visibleProvider.state);
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'pt-BR');

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        visible.state
            ? ScrollText(
                width: 160,
                align: Alignment.centerRight,
                widget: Text(
                  formatCurrency
                      .format(criptoInfo.valueCripto * criptoInfo.amountCrypto),
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                ),
              )
            : const HideMonetary(
                width: 110,
                height: 18,
              ),
        const SizedBox(height: 5),
        visible.state
            ? ScrollText(
                width: 160,
                align: Alignment.centerRight,
                widget: Text(
                  '${criptoInfo.amountCrypto} ${criptoInfo.initialsCripto}',
                  style: const TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 136, 134, 134)),
                ),
              )
            : const HideMonetary(
                width: 70,
                height: 18,
              ),
      ],
    );
  }
}

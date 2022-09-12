import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/base_cripto.dart';
import 'package:flutter_application_2/presenter/wallet/widgets/hide_monetary.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/providers.dart';

class CurrencyData extends HookConsumerWidget {
  final BaseCripto cripto;

  const CurrencyData({
    Key? key,
    required this.cripto
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visible = ref.watch(visibleProvider.state);
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'pt-BR');

    return Column(
      children: [
        const Divider(thickness: 1),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24,
            child: Image(
              image: AssetImage(cripto.iconCripto),
            ),
          ),
          title: Text(
            cripto.initialsCripto,
            style: const TextStyle(
              fontSize: 19,
            ),
          ),
          subtitle: Text(
            cripto.nameCripto,
            style: const TextStyle(
                fontSize: 15, color: Color.fromARGB(255, 136, 134, 134)),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  visible.state
                      ? Text(
                          formatCurrency.format(cripto.valueCripto),
                          style: const TextStyle(
                            fontSize: 19,
                          ),
                        )
                      : const HideMonetary(),
                  const SizedBox(height: 5),
                  visible.state
                      ? Text(
                          '${cripto.amountCrypto} ${cripto.initialsCripto}',
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 136, 134, 134)),
                        )
                      : const HideMonetary(),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right),
                    iconSize: 20,
                    splashRadius: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

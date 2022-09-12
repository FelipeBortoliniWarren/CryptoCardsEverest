import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/base_cripto.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/criptos_info.dart';
import '../../../core/providers.dart';

class BalanceUser extends StatefulHookConsumerWidget {
  const BalanceUser({Key? key}) : super(key: key);

  @override
  ConsumerState<BalanceUser> createState() => _BalanceUserState();
}

class _BalanceUserState extends ConsumerState<BalanceUser> {
  double calculateTotalWallet() {
    double walletBalance = 0;
    for (BaseCripto cripto in criptos) {
      walletBalance += cripto.valueCripto * cripto.amountCrypto;
    }
    return walletBalance;
  }

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'pt-BR');
    final visible = ref.watch(visibleProvider.state);
    double totalBalance = calculateTotalWallet();

    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Cripto',
                style: GoogleFonts.montserrat(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.pink,
                  letterSpacing: -1,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    visible.state = !visible.state;
                  });
                },
                icon: visible.state
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                iconSize: 35,
                splashRadius: 20,
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  visible.state
                      ? Text(
                          formatCurrency.format(totalBalance),
                          style: GoogleFonts.montserrat(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      : Container(
                          width: 200,
                          height: 39,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.grey.shade200,
                                Colors.grey.shade300
                              ],
                            ),
                          ),
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
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/utils/format_currency.dart';
import '../../shared/utils/styles.dart';
import '../controller/portfolio_controller.dart';
import '../provider/provider.dart';
import 'hide_monetary.dart';

class HeaderPortfolio extends HookConsumerWidget {
  final VoidCallback changeVisibility;
  const HeaderPortfolio({super.key, required this.changeVisibility});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visible = ref.watch(visibleProvider.state);
    PortfolioController criptoContorller = PortfolioController();
    double totalBalance = criptoContorller
        .calculateTotalWallet(criptoContorller.getCriptosList());

    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.titlePortfolio,
                style: GoogleFonts.montserrat(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: pinkWarren,
                  letterSpacing: -1,
                ),
              ),
              IconButton(
                onPressed: () => changeVisibility(),
                icon: visible.state
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                iconSize: 35,
                splashRadius: 20,
              ),
            ],
          ),
          const SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: HideMonetary(
                  smallWidth: 200,
                  bigWidth: 310,
                  height: 39,
                  text: formatCurrency.format(totalBalance),
                  fontSize: 32,
                  align: Alignment.centerLeft,
                  color: colorTextBlack,
                  style: GoogleFonts.montserrat(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                AppLocalizations.of(context)!.totalCoinValue,
                style: GoogleFonts.montserrat(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: colorTextGrey,
                  letterSpacing: -1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

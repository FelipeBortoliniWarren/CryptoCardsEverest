// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_application_2/details/widgets/crypto_info_row.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/utils/styles.dart';
import '../../shared/utils/format_currency.dart';
import '../../shared/widgets/circle_cripto_icon.dart';
import '../model/arguments.dart';
// import '../providers/providers.dart';
import '../widgets/app_bar_cripto_details.dart';
import '../widgets/line_chart_widget.dart';
import '../widgets/history_filter_chart.dart';

class CriptoDetailsPage extends StatelessWidget {
  static const route = '/details';

  const CriptoDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Arguments args =
        ModalRoute.of(context)?.settings.arguments as Arguments;
    // final historyInterval = ref.watch(historyIntervalProvider);
    // historyInterval.setPricesHistory(args.cripto.historyPrice);

    return Scaffold(
      appBar: AppBarCriptoDetails(width: MediaQuery.of(context).size.width),
      body: Container(
        color: white,
        padding: const EdgeInsets.only(top: 32),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16, right: 18, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          args.cripto.name,
                          style: titleH1BlackStyle(),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          args.cripto.initials,
                          style: subtitleGreyStyle(),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        circleIconCripto(args.cripto.icon),
                        const SizedBox(
                          height: 22,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      formatCurrency.format(args.cripto.price.toDouble()),
                      style: titleH1Montserrat32(colorTextBlack),
                    ),
                    LineChartWidget(historyPrice: args.cripto.historyPrice),
                    Container(
                      height: 22,
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: const [
                          HistoryFilterChart(text: '5D', days: 5),
                          HistoryFilterChart(text: '15D', days: 15),
                          HistoryFilterChart(text: '30D', days: 30),
                          HistoryFilterChart(text: '45D', days: 45),
                          HistoryFilterChart(text: '90D', days: 90),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CryptoInfoRow(
                infoTitle: AppLocalizations.of(context)!.currentPrice,
                info: formatCurrency.format(args.cripto.price.toDouble()),
                styleText: textInfoRowsDetailsStyle(),
                styleValue: valuesInfoRowsDetailsStyle(),
              ),
              CryptoInfoRow(
                infoTitle: AppLocalizations.of(context)!.variation24,
                info: args.cripto.variation > 0
                    ? '+${args.cripto.variation}%'
                    : '${args.cripto.variation}%',
                styleText: textInfoRowsDetailsStyle(),
                styleValue: valueVariationStyle(args.cripto.variation),
              ),
              CryptoInfoRow(
                infoTitle: AppLocalizations.of(context)!.amount,
                info: '${args.cripto.amount} ${args.cripto.initials}',
                styleText: textInfoRowsDetailsStyle(),
                styleValue: valuesInfoRowsDetailsStyle(),
              ),
              CryptoInfoRow(
                infoTitle: AppLocalizations.of(context)!.value,
                info: formatCurrency.format(args.cripto.value.toDouble()),
                styleText: textInfoRowsDetailsStyle(),
                styleValue: valuesInfoRowsDetailsStyle(),
              ),
              const SizedBox(height: 26),
              pinkButton(AppLocalizations.of(context)!.convertCurrency,
                  MediaQuery.of(context).size.width),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_application_2/cripto_details/widgets/info_row.dart';

import '../../../shared/utils/styles.dart';
import '../../shared/utils/format_currency.dart';
import '../../shared/widgets/circle_cripto_icon.dart';
import '../model/arguments.dart';
import '../widgets/app_bar_cripto_details.dart';
import '../widgets/cripto_graph.dart';
import '../widgets/history_filter_chart.dart';

class CriptoDetailsPage extends StatelessWidget {
  static const route = '/details';

  const CriptoDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Arguments args =
        ModalRoute.of(context)?.settings.arguments as Arguments;

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
                          args.nameCripto,
                          style: titleH1BlackStyle(),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          args.initialsCripto,
                          style: subtitleGreyStyle(),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        circleIconCripto(args.iconCripto),
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
                      formatCurrency.format(args.priceCripto.toDouble()),
                      style: titleH1Montserrat32(colorTextBlack),
                    ),
                    const LineChartWidget(),
                    Container(
                      height: 22,
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: const [
                          HistoryFilterChart(text: '5D', isSelected: true),
                          HistoryFilterChart(text: '15D', isSelected: false),
                          HistoryFilterChart(text: '30D', isSelected: false),
                          HistoryFilterChart(text: '45D', isSelected: false),
                          HistoryFilterChart(text: '90D', isSelected: false),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InfoRow(
                infoTitle: AppLocalizations.of(context)!.currentPrice,
                info: formatCurrency.format(args.priceCripto.toDouble()),
                styleText: textInfoRowsDetailsStyle(),
                styleValue: valuesInfoRowsDetailsStyle(),
              ),
              InfoRow(
                infoTitle: AppLocalizations.of(context)!.variation24,
                info: args.variationCripto > 0
                    ? '+${args.variationCripto}%'
                    : '${args.variationCripto}%',
                styleText: textInfoRowsDetailsStyle(),
                styleValue: valueVariationStyle(args.variationCripto),
              ),
              InfoRow(
                infoTitle: AppLocalizations.of(context)!.amount,
                info: '${args.amountCripto} ${args.initialsCripto}',
                styleText: textInfoRowsDetailsStyle(),
                styleValue: valuesInfoRowsDetailsStyle(),
              ),
              InfoRow(
                infoTitle: AppLocalizations.of(context)!.value,
                info: formatCurrency.format(args.valueCripto.toDouble()),
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

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/details/controllers/details_controller.dart';
import 'package:flutter_application_2/shared/controller/crypto_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_application_2/details/widgets/crypto_info_row.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/utils/styles.dart';
import '../../shared/utils/format_currency.dart';
import '../../shared/widgets/circle_crypto_icon.dart';
import '../model/arguments.dart';
import '../providers/providers.dart';
import '../widgets/app_bar_crypto_details.dart';
import '../widgets/line_chart_widget.dart';
import '../widgets/history_filter_chart.dart';

class CryptoDetailsPage extends HookConsumerWidget {
  static const route = '/details';

  const CryptoDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final Arguments args =
        ModalRoute.of(context)?.settings.arguments as Arguments;

    final historyInterval = ref.watch(historyIntervalProvider);
    int intervalDays = historyInterval.getIntervalDays();

    final detailsController = DetailsController();
    double variation = detailsController.getVariationPeriodSelected(args.crypto.historyPrice, intervalDays);
    double pricePeriod = detailsController.getPricePeriodSelected(args.crypto.historyPrice, intervalDays);

    final cryptoController = CryptoController();
    Decimal currentPrice = cryptoController.getCurrentPrice(args.crypto);

    return Scaffold(
      appBar: AppBarCryptoDetails(width: MediaQuery.of(context).size.width),
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
                          args.crypto.name,
                          style: titleH1BlackStyle(),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          args.crypto.initials,
                          style: subtitleGreyStyle(),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleIconCrypto(icon: args.crypto.icon),
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
                      formatCurrency.format(currentPrice.toDouble()),
                      style: titleH1Montserrat32(colorTextBlack),
                    ),
                    LineChartWidget(historyPrice: args.crypto.historyPrice),
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
                infoTitle: intervalDays == 5
                    ? AppLocalizations.of(context)!.currentPrice
                    : '${AppLocalizations.of(context)!.price} ${intervalDays}D',
                info: formatCurrency.format(pricePeriod),
                styleText: textInfoRowsDetailsStyle(),
                styleValue: valuesInfoRowsDetailsStyle(),
              ),
              CryptoInfoRow(
                infoTitle: intervalDays == 5
                    ? AppLocalizations.of(context)!.variation24 :
                    '${AppLocalizations.of(context)!.variation} ${intervalDays}H',
                info: variation > 0
                    ? '+${variation.toStringAsFixed(2)}%'
                    : '${variation.toStringAsFixed(2)}%',
                styleText: textInfoRowsDetailsStyle(),
                styleValue: valueVariationStyle(variation),
              ),
              CryptoInfoRow(
                infoTitle: AppLocalizations.of(context)!.amount,
                info: '${args.crypto.amount} ${args.crypto.initials}',
                styleText: textInfoRowsDetailsStyle(),
                styleValue: valuesInfoRowsDetailsStyle(),
              ),
              CryptoInfoRow(
                infoTitle: AppLocalizations.of(context)!.value,
                info: formatCurrency.format(detailsController.getValueUser(args.crypto.amount, currentPrice).toDouble()),
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

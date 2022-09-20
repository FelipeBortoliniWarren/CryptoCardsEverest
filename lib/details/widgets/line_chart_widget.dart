import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_2/shared/utils/styles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/utils/format_currency.dart';
import '../providers/providers.dart';

class LineChartWidget extends HookConsumerWidget {
  final List<List> historyPrice;

  const LineChartWidget({
    Key? key,
    required this.historyPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historyInterval = ref.watch(historyIntervalProvider);

    return Container(
      margin: const EdgeInsets.only(top: 50, right: 16, bottom: 17),
      width: MediaQuery.of(context).size.width,
      height: 140,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(show: false),
          backgroundColor: white,
          minX: historyInterval.minX,
          minY: historyInterval.minY,
          gridData: FlGridData(
            drawVerticalLine: false,
            drawHorizontalLine: false,
          ),
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: colorTextGrey,
              fitInsideHorizontally: true,
              tooltipPadding: const EdgeInsets.all(5),
              tooltipRoundedRadius: 10,
              getTooltipItems: (pointValues) {
                return pointValues.map((point) {
                  return LineTooltipItem(
                    formatCurrency.format(point.y),
                    const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: white,
                      fontSize: 14,
                    ),
                  );
                }).toList();
              },
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: const Border(
              bottom: BorderSide(
                color: lightGrey,
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              color: pinkWarren,
              dotData: FlDotData(
                show: false,
              ),
              spots: historyInterval.pricesListToListFlSpot(),
              barWidth: 3,
              isCurved: false,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_2/shared/utils/styles.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, right: 16, bottom: 17),
      width: MediaQuery.of(context).size.width,
      height: 140,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(show: false),
          backgroundColor: white,
          minX: 0,
          minY: 0,
          gridData: FlGridData(
            drawVerticalLine: false,
            drawHorizontalLine: false,
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
              spots: const [
                FlSpot(0, 0),
                FlSpot(5, 4),
                FlSpot(10, 10),
                FlSpot(15, 8),
                FlSpot(20, 15),
                FlSpot(25, 20),
                FlSpot(30, 24),
                FlSpot(35, 28),
                FlSpot(40, 32),
                FlSpot(45, 27),
                FlSpot(50, 40),
              ],
              barWidth: 3,
              isCurved: false,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:fl_chart/fl_chart.dart';

import '../repos/history_interval_repository.dart';

class HistoryIntervalUseCase {
  final HistoryIntervalRepository historyIntervalRepository = HistoryIntervalRepository();

  List<FlSpot> pricesListToListFlSpot(List<List> history, int days){
    return historyIntervalRepository.pricesListToListFlSpot(history, days);
  }

  double getMinYChart(List<List> history, int days){
    return historyIntervalRepository.getMinYChart(history, days);
  }

  double getMinXChart(List<List> history, int days){
    return historyIntervalRepository.getMinXChart(history, days);
  }
}

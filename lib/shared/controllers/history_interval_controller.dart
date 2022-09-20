import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import '../../details/controller/details_controller.dart';

import '../usecases/history_interval_usecase.dart';

class HistoryIntervalController extends ChangeNotifier {
  final historyIntervalUseCase = HistoryIntervalUseCase();
  final detailsController = DetailsController();
  double minX = 0;
  double minY = 0;
  int intervalDays = 5;
  List<List> listPricesChart = [];

  void setPricesHistory(List<List> listPrices){
    listPricesChart = listPrices;
    notifyListeners();
  }

  void changeIntervalDays(int days){
    intervalDays = days;
    notifyListeners();
  }

  void setMinXChart() {
    minX = historyIntervalUseCase.getMinXChart(listPricesChart, intervalDays);
    notifyListeners();
  }

  void setMinYChart() {
    minY = historyIntervalUseCase.getMinYChart(listPricesChart, intervalDays);
    notifyListeners();
  }

  int getIntervalDays(){
    return intervalDays;
  }

  List<FlSpot> pricesListToListFlSpot() {
    return historyIntervalUseCase.pricesListToListFlSpot(listPricesChart, intervalDays);
  }
}

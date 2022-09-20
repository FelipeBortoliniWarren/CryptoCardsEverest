import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_2/details/controller/details_controller.dart';

import '../usecase/details_usecase.dart';

class HistoryIntervalController extends ChangeNotifier {
  final detailsUseCase = DetailsUseCase();
  final detailsController = DetailsController();
  double minX = 0;
  double minY = 0;
  int intervalDays = 5;
  List<List> listPricesChart = [];

  void setPricesHistory(List<List> listPrices){
    listPricesChart = listPrices;
    notifyListeners();
  }

  void changeDaysHistoryInterval(int days){
    intervalDays = days;
    notifyListeners();
  }

  void setMinXChart() {
    minX = detailsUseCase.getMinXChart(listPricesChart, intervalDays);
    notifyListeners();
  }

  void setMinYChart() {
    minY = detailsUseCase.getMinYChart(listPricesChart, intervalDays);
    notifyListeners();
  }

  int getIntervalDays(){
    return intervalDays;
  }

  List<FlSpot> pricesListToListFlSpot() {
    return detailsUseCase.pricesListToListFlSpot(listPricesChart, intervalDays);
  }
}

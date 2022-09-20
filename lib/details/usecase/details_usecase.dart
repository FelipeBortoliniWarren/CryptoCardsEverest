import 'package:fl_chart/fl_chart.dart';

import '../../shared/model/cripto_model.dart';
import '../repo/details_repository.dart';

class DetailsUseCase {
  final DetailsRepository repository = DetailsRepository();

  List<CriptoModel> getCriptosListUseCase() {
    return repository.getCriptosListRepository();
  }

  List<FlSpot> pricesListToListFlSpot(List<List> history, int days){
    return repository.pricesListToListFlSpot(history, days);
  }

  double getMinYChart(List<List> history, int days){
    return repository.getMinYChart(history, days);
  }

  double getMinXChart(List<List> history, int days){
    return repository.getMinXChart(history, days);
  }
}

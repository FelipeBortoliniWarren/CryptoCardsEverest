import 'package:decimal/decimal.dart';

import '../usecases/details_usecase.dart';

class DetailsController{
  final detailsUseCase = DetailsUseCase();

  double getPricePeriodSelected(List<List> history, int days){
    return detailsUseCase.getPricePeriodSelected(history, days);
  }

  double getVariationPeriodSelected(List<List> history, int days){
    return detailsUseCase.getVariationPeriodSelected(history, days);
  }

  Decimal getValueUser(double amount, Decimal price){
    return detailsUseCase.getValueUser(amount, price);
  }
}

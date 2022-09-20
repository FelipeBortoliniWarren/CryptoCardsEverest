import 'package:decimal/decimal.dart';
import 'package:flutter_application_2/shared/usecase/crypto_usecase.dart';

import '../repos/details_repository.dart';

class DetailsUseCase extends CryptoUsecase{
  final DetailsRepository detatilsRepository = DetailsRepository();

  double getPricePeriodSelected(List<List> history, int days){
    return detatilsRepository.getPricePeriodSelected(history, days);
  }

  double getVariationPeriodSelected(List<List> history, int days){
    return detatilsRepository.getVariationPeriodSelected(history, days);
  }

  Decimal getValueUser(double amount, Decimal price){
    return detatilsRepository.getValueUser(amount, price);
  }
}

import 'package:flutter_application_2/shared/api/models/get_all_cryptos_response.dart';
import 'package:flutter_application_2/shared/models/crypto_model.dart';
import 'package:flutter_application_2/shared/models/user_cryptos_model.dart';
import 'package:flutter_application_2/shared/repositories/user_cryptos_repository.dart';

extension GetAllCryptosMapper on GetAllCryptosResponse {
  List<CryptoModel> toViewData() {
    UserCryptosRepository repo = UserCryptosRepository();
    List<UserCryptosModel> cryptos = repo.getCryptosListRepository();

    List ids = [];

    for (UserCryptosModel crypto in cryptos) {
      ids.add(crypto.cryptoId);
    }

    List<CryptoModel> list = listCryptos.map((crypto) {
      return CryptoModel(
        id: crypto.id,
        name: crypto.name,
        symbol: crypto.symbol,
        image: crypto.image.small,
        price: crypto.market_data.current_price.brl,
        variation: crypto.market_data.price_change_percentage_24h,
      );
    }).toList();

    list.retainWhere((element) => ids.contains(element.id));

    return list;
  }
}

import 'package:flutter_application_2/shared/api/models/get_all_cryptos_response.dart';
import 'package:flutter_application_2/shared/models/crypto_model.dart';

extension GetAllCryptosMapper on GetAllCryptosResponse {
  List<CryptoModel> toViewData() {
    return listCryptos
        .map(
          (crypto) => CryptoModel(
            id: crypto.id,
            name: crypto.name,
            symbol: crypto.symbol,
            image: crypto.image.small,
            price: crypto.market_data.current_price.brl,
          ),
        )
        .toList();
  }
}

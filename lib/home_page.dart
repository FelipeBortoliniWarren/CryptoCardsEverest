import 'package:flutter/material.dart';

import 'balance_user.dart';
import 'bottom_nav_crypto.dart';
import 'currency_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: BalanceUser(),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          CurrencyData(
            nameCripto: 'Bitcoin',
            initialsCripto: 'BTC',
            valueCripto: 1000,
            iconCripto: 'assets/images/bitcoin.png',
            amountCrypto: 75,
          ),
          CurrencyData(
            nameCripto: 'Ethereum',
            initialsCripto: 'ETH',
            valueCripto: 0,
            iconCripto: 'assets/images/ethereum.png',
            amountCrypto: 75,
          ),
          CurrencyData(
            nameCripto: 'Litecoin',
            initialsCripto: 'LTC',
            valueCripto: 0,
            iconCripto: 'assets/images/litecoin.png',
            amountCrypto: -0.7,
          ),
          CurrencyData(
            nameCripto: 'Tether',
            initialsCripto: 'USDT',
            valueCripto: 0,
            iconCripto: 'assets/images/tether.png',
            amountCrypto: -0.7,
          ),
          CurrencyData(
            nameCripto: 'BNB',
            initialsCripto: 'BNB',
            valueCripto: 0,
            iconCripto: 'assets/images/bnb.png',
            amountCrypto: -0.7,
          ),
          CurrencyData(
            nameCripto: 'Cardano',
            initialsCripto: 'ADA',
            valueCripto: 0,
            iconCripto: 'assets/images/cardano.png',
            amountCrypto: -0.7,
          ),
          CurrencyData(
            nameCripto: 'Polkadot',
            initialsCripto: 'DOT',
            valueCripto: 0,
            iconCripto: 'assets/images/polkadot.png',
            amountCrypto: -0.7,
          ),
          CurrencyData(
            nameCripto: 'Dogecoin',
            initialsCripto: 'DOGE',
            valueCripto: 0,
            iconCripto: 'assets/images/dogecoin.png',
            amountCrypto: -0.7,
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavCrypto(),
    );
  }
}


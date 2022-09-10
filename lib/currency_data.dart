import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrencyData extends StatelessWidget {
  final String nameCripto;
  final String initialsCripto;
  final String iconCripto;
  final double valueCripto;
  final double amountCrypto;

  const CurrencyData({
    Key? key,
    required this.nameCripto,
    required this.initialsCripto,
    required this.iconCripto,
    required this.valueCripto,
    required this.amountCrypto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'pt-BR');

    return Column(
      children: [
        const Divider(
          thickness: 1,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24,
            child: Image(
              image: AssetImage(iconCripto),
            ),
          ),
          title: Text(
            initialsCripto,
            style: const TextStyle(
              fontSize: 19,
            ),
          ),
          subtitle: Text(
            nameCripto,
            style: const TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 136, 134, 134),
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    formatCurrency.format(valueCripto),
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '$amountCrypto $initialsCripto',
                    style: const TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 136, 134, 134)),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    alignment: Alignment.topCenter,
                    icon: const Icon(Icons.keyboard_arrow_right),
                    iconSize: 30,
                    splashRadius: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

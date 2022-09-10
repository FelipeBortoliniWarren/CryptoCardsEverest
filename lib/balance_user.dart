import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class BalanceUser extends StatelessWidget {
  final double totalWallet = 14798;

  const BalanceUser({super.key});

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'pt-BR');
    
    
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 30,
        right: 30,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Cripto',
                style: GoogleFonts.montserrat(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.pink,
                  letterSpacing: -1,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye),
                iconSize: 35,
                splashRadius: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formatCurrency.format(totalWallet),
                    style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Valor total de moedas',
                    style: GoogleFonts.montserrat(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      letterSpacing: -1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

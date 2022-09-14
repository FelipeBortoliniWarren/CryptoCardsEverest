import 'package:flutter/material.dart';
import 'package:flutter_application_2/shared/utils/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class MovementsPage extends StatelessWidget {
  const MovementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          children: [
            Text(
              'Movimentações',
              style: GoogleFonts.montserrat(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: pinkWarren,
                letterSpacing: -1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

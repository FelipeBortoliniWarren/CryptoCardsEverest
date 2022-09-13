import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovementPage extends StatelessWidget {
  const MovementPage({super.key});

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
                color: Colors.pink,
                letterSpacing: -1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

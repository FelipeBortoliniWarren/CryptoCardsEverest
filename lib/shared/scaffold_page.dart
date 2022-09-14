import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/portfolio/view/portfolio_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/movements/view/movements_page.dart';
import 'utils/assets.dart';

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({super.key});

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int indexSelected = 0;

  void changeIndex(int value) {
    indexSelected = value;
    setState(() {});
  }

  final List<Widget> pages = [
    const PortfolioPage(),
    const MovementsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexSelected],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFE02B57),
        onTap: changeIndex,
        selectedLabelStyle: GoogleFonts.montserrat(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          height: 1.8,
        ),
        unselectedLabelStyle: GoogleFonts.nunito(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          height: 1.8,
        ),
        currentIndex: indexSelected,
        items: [
          BottomNavigationBarItem(
            icon: const ImageIcon(AssetImage(warrenIcon)),
            label: AppLocalizations.of(context)!.bottomBarPortfolio,
          ),
          BottomNavigationBarItem(
            icon: const ImageIcon(AssetImage(centIcon)),
            label: AppLocalizations.of(context)!.bottomBarMovements,
          ),
        ],
      ),
    );
  }
}

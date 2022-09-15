import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/portfolio/view/portfolio_page.dart';
import 'package:flutter_application_2/shared/utils/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../movements/view/movements_page.dart';
import '../utils/assets.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int indexSelected = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: indexSelected);
  }

  void changeIndex(int value) {
    setState(() {
      indexSelected = value;
    });
  }

  final List<Widget> pages = [
    const PortfolioPage(),
    const MovementsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: changeIndex,
        controller: pageController,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: colorTextBlack,
        onTap: (page) {
          pageController.animateToPage(
            page,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        selectedLabelStyle: bottomNavLabelsStyle(),
        unselectedLabelStyle: bottomNavLabelsStyle(),
        currentIndex: indexSelected,
        items: [
          BottomNavigationBarItem(
            icon: const ImageIcon(AssetImage(warrenIcon), color: colorTextGrey,),
            activeIcon: const ImageIcon(AssetImage(warrenIcon), color: pinkWarren,),
            label: AppLocalizations.of(context)!.bottomBarPortfolio,
          ),
          BottomNavigationBarItem(
            icon: const ImageIcon(AssetImage(centIcon), color: colorTextGrey,),
            activeIcon: const ImageIcon(AssetImage(centIcon), color: pinkWarren,),
            label: AppLocalizations.of(context)!.bottomBarMovements,
          ),
        ],
      ),
    );
  }
}

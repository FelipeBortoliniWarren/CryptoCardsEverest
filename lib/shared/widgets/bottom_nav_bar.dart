import 'package:flutter/material.dart';
import 'package:flutter_application_2/shared/utils/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../utils/assets.dart';

class BottomNavBar extends StatelessWidget {
  final int indexSelected;

  const BottomNavBar({super.key, required this.indexSelected});

  @override
  Widget build(BuildContext context) {
    void changePage(int index) {
      switch (index) {
        case 0:
          Navigator.pushNamed(context, '/portfolio');
          break;
        case 1:
          Navigator.pushNamed(context, '/movements');
          break;
      }
    }

    return BottomNavigationBar(
      selectedItemColor: colorTextBlack,
      onTap: changePage,
      selectedLabelStyle: bottomNavLabelsStyle(),
      unselectedLabelStyle: bottomNavLabelsStyle(),
      currentIndex: indexSelected,
      items: [
        BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage(warrenIcon),
            color: colorTextGrey,
          ),
          activeIcon: const ImageIcon(
            AssetImage(warrenIcon),
            color: pinkWarren,
          ),
          label: AppLocalizations.of(context)!.bottomBarPortfolio,
        ),
        BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage(centIcon),
            color: colorTextGrey,
          ),
          activeIcon: const ImageIcon(
            AssetImage(centIcon),
            color: pinkWarren,
          ),
          label: AppLocalizations.of(context)!.bottomBarMovements,
        ),
      ],
    );
  }
}

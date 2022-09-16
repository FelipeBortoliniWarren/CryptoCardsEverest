import 'package:flutter/material.dart';
import 'package:flutter_application_2/shared/utils/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../shared/widgets/bottom_nav_bar.dart';

class MovementsPage extends StatelessWidget {
  const MovementsPage({super.key});

  static const route = '/movements';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.titleMovements,
              style: titleH1Montserrat32(colorTextBlack),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(indexSelected: 1),
    );
  }
}

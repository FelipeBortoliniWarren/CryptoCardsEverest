import 'package:flutter/material.dart';
import 'package:flutter_application_2/shared/utils/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              AppLocalizations.of(context)!.titleMovements,
              style: titlePageStyle(),
            ),
          ],
        ),
      ),
    );
  }
}

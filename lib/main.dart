import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'shared/widgets/bottom_nav_bar.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        title: 'Cripto Wallet',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('pt', 'BR'),
          Locale('en', ''),
        ],
        home: BottomNavBar(),
      ),
    ),
  );
}

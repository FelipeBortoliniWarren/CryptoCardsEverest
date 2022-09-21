import 'package:flutter/material.dart';
import 'package:flutter_application_2/portfolio/view/portfolio_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'shared/utils/routes.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: 'Cripto Wallet',
        debugShowCheckedModeBanner: false,
        initialRoute: PortfolioPage.route,
        routes: appRoutes,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('pt', 'BR'),
          Locale('en', ''),
        ],
      ),
    ),
  );
}

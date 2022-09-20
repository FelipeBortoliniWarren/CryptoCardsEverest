import 'package:flutter/material.dart';
import '../../movements/view/movements_page.dart';
import '../../portfolio/view/portfolio_page.dart';

import '../../conversion/view/conversion_page.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  PortfolioPage.route: (context) => const PortfolioPage(),
  MovementsPage.route: (context) => const MovementsPage(),
  ConversionPage.route: (context) => const ConversionPage(),
};

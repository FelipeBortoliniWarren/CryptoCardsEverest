import 'package:flutter/material.dart';
import 'package:flutter_application_2/details/view/cripto_details_page.dart';
import 'package:flutter_application_2/movements/view/movements_page.dart';
import 'package:flutter_application_2/portfolio/view/portfolio_page.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  PortfolioPage.route: (context) => const PortfolioPage(),
  MovementsPage.route: (context) => const MovementsPage(),
  CriptoDetailsPage.route: (context) => const CriptoDetailsPage(),
};

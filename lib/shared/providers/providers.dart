import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../portfolio/controller/portfolio_controller.dart';

final criptosInfoProvider = Provider((ref) => PortfolioController());
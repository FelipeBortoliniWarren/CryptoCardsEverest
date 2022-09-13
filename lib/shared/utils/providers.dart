import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../pages/portfolio/controller/portfolio_controller.dart';

final visibleProvider = StateProvider((ref) => true);

final criptosInfoProvider = Provider((ref) => PortfolioController());
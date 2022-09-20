import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controller/history_interval_controller.dart';

final historyIntervalProvider = ChangeNotifierProvider((ref) => HistoryIntervalController());
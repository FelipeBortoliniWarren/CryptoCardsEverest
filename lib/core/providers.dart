import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'criptos_info.dart';

final visibleProvider = StateProvider((ref) => true);

final criptosInfoProvider = Provider((ref) => criptos);

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../usecases/user_cryptos_usecase.dart';

final userCryptosProvider = Provider((ref) => UserCryptosUsecase().getCryptosListRepository());

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/portfolio/widgets/balance_user/widgets/first_row_balance_user_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/second_row_balance_user_widget.dart';

class BalanceUser extends StatefulHookConsumerWidget {
  const BalanceUser({Key? key}) : super(key: key);

  @override
  ConsumerState<BalanceUser> createState() => _BalanceUserState();
}

class _BalanceUserState extends ConsumerState<BalanceUser> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
      child: Column(
        children: const [
          FirstRowBalanceUserWidget(),
          SizedBox(height: 5),
          SecondRowBalanceUserWidget(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../core/providers.dart';

class FirstRowBalanceUserWidget extends StatefulHookConsumerWidget {
  const FirstRowBalanceUserWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<FirstRowBalanceUserWidget> createState() => _FirstRowBalanceUserWidgetState();
}

class _FirstRowBalanceUserWidgetState extends ConsumerState<FirstRowBalanceUserWidget> {
  @override
  Widget build(BuildContext context) {
    final visible = ref.watch(visibleProvider.state);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Cripto',
          style: GoogleFonts.montserrat(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Colors.pink,
            letterSpacing: -1,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              visible.state = !visible.state;
            });
          },
          icon: visible.state
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
          iconSize: 35,
          splashRadius: 20,
        ),
      ],
    );
  }
}

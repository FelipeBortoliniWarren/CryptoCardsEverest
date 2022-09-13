import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScrollText extends HookConsumerWidget {
  final Widget widget;
  final double? width;
  final Alignment align;

  const ScrollText({
    Key? key,
    required this.widget,
    required this.width,
    required this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: align,
      width: width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: widget,
      ),
    );
  }
}

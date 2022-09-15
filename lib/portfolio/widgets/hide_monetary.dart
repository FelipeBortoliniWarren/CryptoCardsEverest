import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/utils/styles.dart';
import '../provider/provider.dart';
import 'scroll_text_widget.dart';

class HideMonetary extends HookConsumerWidget {
  final double smallWidth;
  final double bigWidth;
  final double height;
  final String text;
  final double fontSize;
  final Alignment align;
  final Color color;
  final TextStyle? style;

  const HideMonetary({
    Key? key,
    required this.smallWidth,
    required this.bigWidth,
    required this.height,
    required this.text,
    required this.fontSize,
    required this.align,
    required this.color,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visible = ref.watch(visibleProvider.state);

    return Column(
      children: [
        Visibility(
          visible: visible.state,
          child: ScrollText(
            width: bigWidth,
            align: align,
            widget: Text(
              text,
              style: style ?? TextStyle(
                fontSize: fontSize,
                color: color,
              ),
            ),
          ),
        ),
        Visibility(
          visible: !(visible.state),
          child: Container(
            width: smallWidth,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  startGradientHide,
                  endGradientHide,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

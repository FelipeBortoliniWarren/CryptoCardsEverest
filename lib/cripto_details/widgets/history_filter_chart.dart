
import 'package:flutter/material.dart';

import '../../shared/utils/styles.dart';

class HistoryFilterChart extends StatelessWidget {
  final String text;
  final bool isSelected;

  const HistoryFilterChart({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
          decoration: BoxDecoration(
            color: isSelected ? lightGrey : white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            text,
            style: textFilterTimeChartStyle(isSelected),
          ),
        ),
      ),
    );
  }
}

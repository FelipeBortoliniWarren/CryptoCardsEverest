import 'package:flutter/material.dart';

class CryptoInfoRow extends StatelessWidget {
  final String textInfo;
  final String valueInfo;
  final TextStyle? styleText;
  final TextStyle? styleValue;

  const CryptoInfoRow({
    Key? key,
    required this.textInfo,
    required this.valueInfo,
    required this.styleText,
    required this.styleValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          const Divider(thickness: 1),
          Container(
            height: 56,
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textInfo,
                  style: styleText,
                ),
                Text(
                  valueInfo,
                  style: styleValue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CryptoInfoRow extends StatelessWidget {
  final String infoTitle;
  final String info;
  final TextStyle? styleText;
  final TextStyle? styleValue;

  const CryptoInfoRow({
    Key? key,
    required this.infoTitle,
    required this.info,
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
                  infoTitle,
                  style: styleText,
                ),
                Text(
                  info,
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

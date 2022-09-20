import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../shared/utils/styles.dart';

class AppBarCryptoDetails extends StatelessWidget
    implements PreferredSizeWidget {
  final double width;

  const AppBarCryptoDetails({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: colorTextBlack,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        splashRadius: 20,
      ),
      backgroundColor: white,
      elevation: 1,
      title: Text(
        AppLocalizations.of(context)!.titleCryptoDetails,
        style: titleAppBarStyle(),
      ),
    );
  }

  @override
  Size get preferredSize => Size(width, 56);
}

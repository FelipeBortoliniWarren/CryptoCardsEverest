import 'package:flutter/material.dart';

import '../utils/styles.dart';

CircleAvatar circleIconCripto(String icon) {
  return CircleAvatar(
    backgroundColor: white,
    radius: 24,
    child: Image(
      image: AssetImage(icon),
    ),
  );
}

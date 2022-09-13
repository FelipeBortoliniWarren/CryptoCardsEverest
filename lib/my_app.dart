import 'package:flutter/material.dart';

import 'shared/scaffold_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cripto Wallet',
      debugShowCheckedModeBanner: false,
      home: ScaffoldPage(),
    );
  }
}

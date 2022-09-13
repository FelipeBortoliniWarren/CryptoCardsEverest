
import 'package:flutter/material.dart';
import 'package:flutter_application_2/presenter/wallet/wallet_page.dart';

import 'presenter/movement/movement_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexSelected = 0;

  void changeIndex(int value) {
    indexSelected = value;
    setState(() {});
  }

  final List<Widget> pages = [
    const WalletPage(),
    const MovementPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexSelected],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFE02B57),
        onTap: changeIndex,
        currentIndex: indexSelected,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/warren.png'),
              ),
              label: 'Portfólio'),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/cent.png'),
            ),
            label: 'Movimentações',
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class BottomNavCrypto extends StatelessWidget {
  const BottomNavCrypto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color(0xFFE02B57),
      items: const [
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/warren.png')),
            label: 'Portfólio'),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/cent.png')),
          label: 'Movimentações',
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class CustonBottomNavigation extends StatelessWidget {
  const CustonBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels:  false,
      showUnselectedLabels:  false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55,57, 54, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_rounded),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_rounded),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_rounded),
          label: 'Calendario'
        ),
      ]
    );
  }
}
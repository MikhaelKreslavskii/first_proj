import 'package:first_proj/components/first_page_slider/start_page_controller.dart';
import 'package:first_proj/page/homePage.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const List<Widget> _pages = <Widget>[
    HomePage(),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Icon(Icons.abc_sharp),
    Icon(
      Icons.chat,
    )
  ];

  static int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('lib/assets/icons/home.png'),
                label: "Домашняя"),
            BottomNavigationBarItem(
                icon: Image.asset('lib/assets/icons/search.png'),
                label: "Поиск"),
            BottomNavigationBarItem(
                icon: Image.asset('lib/assets/icons/orders.png'),
                label: "Заказы"),
            BottomNavigationBarItem(
                icon: Image.asset('lib/assets/icons/fav.png'),
                label: "Избранное"),
            BottomNavigationBarItem(
                icon: Image.asset('lib/assets/icons/profile.png'),
                label: "Профиль"),
          ],
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
        ),
        // body:
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

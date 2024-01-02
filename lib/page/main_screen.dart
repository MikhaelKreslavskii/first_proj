import 'package:first_proj/components/first_page_slider/start_page_controller.dart';
import 'package:first_proj/page/homePage.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizerUtil.setScreenSize(constraints, orientation);
        return MaterialApp(
          home: Scaffold(
            body: _pages.elementAt(_currentIndex),
            bottomNavigationBar: BottomNavigationBar(
              /// selectedItemColor: Colors.orange,
              fixedColor: Colors.orange,
              selectedIconTheme: IconThemeData(color: Colors.orange),
              unselectedItemColor: Colors.black,
              unselectedLabelStyle: TextStyle(color: Colors.black),
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset('lib/assets/icons/home.png'),
                    label: "Домашняя",
                    activeIcon: Image.asset(
                      'lib/assets/icons/home.png',
                      color: Colors.orange,
                    )),
                BottomNavigationBarItem(
                    icon: Image.asset('lib/assets/icons/search.png'),
                    label: "Поиск",
                    activeIcon: Image.asset(
                      'lib/assets/icons/search.png',
                      color: Colors.orange,
                    )),
                BottomNavigationBarItem(
                    icon: Image.asset('lib/assets/icons/orders.png'),
                    label: "Заказы",
                    activeIcon: Image.asset(
                      'lib/assets/icons/orders.png',
                      color: Colors.orange,
                    )),
                BottomNavigationBarItem(
                    icon: Image.asset('lib/assets/icons/fav.png'),
                    label: "Избранное",
                    activeIcon: Image.asset(
                      'lib/assets/icons/fav.png',
                      color: Colors.orange,
                    )),
                BottomNavigationBarItem(
                    icon: Image.asset('lib/assets/icons/profile.png'),
                    label: "Профиль",
                    activeIcon: Image.asset(
                      'lib/assets/icons/profile.png',
                      color: Colors.orange,
                    )),
              ],
              currentIndex: _currentIndex,
              onTap: _onItemTapped,
            ),
            // body:
          ),
        );
      });
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

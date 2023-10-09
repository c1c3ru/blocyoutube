import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/responsive.dart';
import 'homescreens.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  final List<Widget> _screens = [
    const HomeScreen(
      key: PageStorageKey('homeScreen'),
    ),
    const Scaffold(),
  ];

  final Map<String, IconData> _icons = const {
    'Home': Icons.home,
    'Pesquisa': Icons.search,
    'Extensão': Icons.extension,
    'Inovação': Icons.insights_outlined,
    'More': Icons.menu,
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: !Responsive.isDesktop(context) ?
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: _icons
              .map((title, icon) => MapEntry(
              title,
              BottomNavigationBarItem(
                icon: Icon(
                  icon,
                  size: 30,
                ),
                label: title,
              )))
              .values
              .toList(),
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          selectedFontSize: 11,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 11,
          onTap: (index) => setState(() => _currentIndex = index),
        ):null
    );
  }
}

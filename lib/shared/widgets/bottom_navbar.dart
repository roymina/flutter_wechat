import 'package:flutter/material.dart';
import 'package:flutter_wechat/routes.dart';

class BottomNavbar extends StatefulWidget {
  final int currentIndex;

  const BottomNavbar({super.key, this.currentIndex = 0});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int get _currentIndex => widget.currentIndex;

  void _onTap(int index) {
    if (index == _currentIndex) return; // Prevent reloading the same page

    String route;
    switch (index) {
      case 0:
        route = AppRoutes.message;
        break;
      case 1:
        route = AppRoutes.contact;
        break;
      case 2:
        route = AppRoutes.discover;
        break;
      case 3:
        route = AppRoutes.my;
        break;
      default:
        return;
    }

    Navigator.pushReplacementNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).disabledColor,
      onTap: _onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.message_outlined),
          activeIcon: Icon(Icons.message),
          label: '微信',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts_outlined),
          activeIcon: Icon(Icons.contacts),
          label: '通讯录',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration_outlined),
          activeIcon: Icon(Icons.compass_calibration),
          label: '发现',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: '我',
        ),
      ],
    );
  }
}

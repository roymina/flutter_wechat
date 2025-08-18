import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

  BottomNavigationBarItem _buildItem(
    String icon,
    String activeIcon,
    String label,
  ) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          Theme.of(context).disabledColor,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: SvgPicture.asset(
        activeIcon,
        colorFilter: ColorFilter.mode(
          Theme.of(context).primaryColor,
          BlendMode.srcIn,
        ),
      ),
      label: label,
    );
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
      items: [
        _buildItem(
          'assets/icons/icons_outlined_chats.svg',
          'assets/icons/icons_filled_chats.svg',
          '微信',
        ),
        _buildItem(
          'assets/icons/icons_outlined_contacts.svg',
          'assets/icons/icons_filled_contacts.svg',
          '通讯录',
        ),
        _buildItem(
          'assets/icons/icons_outlined_discover.svg',
          'assets/icons/icons_filled_discover.svg',
          '发现',
        ),
        _buildItem(
          'assets/icons/icons_outlined_me.svg',
          'assets/icons/icons_filled_me.svg',
          '我',
        ),
      ],
    );
  }
}

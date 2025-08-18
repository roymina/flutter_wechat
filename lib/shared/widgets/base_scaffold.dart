import 'package:flutter/material.dart';
import 'package:flutter_wechat/shared/widgets/bottom_navbar.dart';
import 'package:flutter_wechat/shared/widgets/top_appbar.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final String? title;
  final int currentIndex;
  final bool showBackButton;
  final TopAppbar? topAppbar;
  const BaseScaffold({
    super.key,
    required this.body,
    this.title,
    this.topAppbar,
    this.currentIndex = 0,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          topAppbar ??
          (title != null
              ? AppBar(
                  title: Text(title!),
                  automaticallyImplyLeading: showBackButton,
                )
              : null),
      body: body,
      bottomNavigationBar: BottomNavbar(currentIndex: currentIndex),
    );
  }
}

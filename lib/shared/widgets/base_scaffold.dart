import 'package:flutter/material.dart';
import 'package:flutter_wechat/shared/widgets/bottom_navbar.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final String? title;
  final int currentIndex;
  final bool showBackButton;

  const BaseScaffold({
    super.key,
    required this.body,
    this.title,
    this.currentIndex = 0,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title != null ? Text(title!) : null,
        automaticallyImplyLeading: showBackButton,
      ),
      body: body,
      bottomNavigationBar: BottomNavbar(currentIndex: currentIndex),
    );
  }
}

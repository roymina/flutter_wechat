import 'package:flutter/material.dart';

class TopAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leftWidget;
  final String? title;
  final Widget? rightButtonIcon;
  final bool showBackButton; // Default value, can be changed if needed
  final VoidCallback? onRightButtonPressed;

  const TopAppbar({
    super.key,
    this.leftWidget,
    this.title,
    this.rightButtonIcon,
    this.onRightButtonPressed,
    this.showBackButton = true,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null ? Text(title!) : null,
      titleTextStyle: Theme.of(context).textTheme.titleMedium,
      centerTitle: true,
      automaticallyImplyLeading: showBackButton,
      backgroundColor: Colors.transparent,
      leading: leftWidget,
      actions: [
        if (rightButtonIcon != null)
          IconButton(
            icon: rightButtonIcon!,
            onPressed: onRightButtonPressed?.call,
          ),
      ],
    );
  }
}

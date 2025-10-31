// lib/widgets/custom_app_bar.dart
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;

  /// Optional 3-dot menu. Pass the callback you want to run when the icon is tapped.
  final VoidCallback? onMenuPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.onMenuPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: onMenuPressed == null
          ? null
          : [
              IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.white),
                onPressed: onMenuPressed,
              ),
            ],
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
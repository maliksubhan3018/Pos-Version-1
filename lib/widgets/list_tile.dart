// lib/widgets/list_tile.dart
import 'package:flutter/material.dart';
import 'package:posversion1/widgets/mycolors.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool isHeader;

  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.onTap,
    this.isHeader = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isHeader) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: Row(
          children: [
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.gray,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      final border = Border(
        bottom: BorderSide(color: AppColors.gray.withOpacity(0.3), width: 1.0),
      );

      return Container(
        decoration: BoxDecoration(border: border),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 1.5,
          ),
          leading: Icon(icon, color: AppColors.gray, size: 24),
          title: Text(
            title,
            style: const TextStyle(fontSize: 16, color: AppColors.black),
          ),
          trailing: trailing ?? const SizedBox(),
          onTap: onTap,
        ),
      );
    }
  }
}

// lib/widgets/password_suffix.dart
import 'package:flutter/material.dart';

class PasswordSuffix extends StatelessWidget {
  final bool obscureText;
  final VoidCallback onToggle;

  const PasswordSuffix({
    super.key,
    required this.obscureText,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        obscureText ? Icons.visibility : Icons.visibility_off,
        color: Colors.grey.shade500,
      ),
      onPressed: onToggle,
    );
  }
}
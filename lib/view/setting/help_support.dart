// help_support.dart
import 'package:flutter/material.dart';
import 'package:posversion1/widgets/mycolors.dart';

class HelpSupport extends StatelessWidget {
  const HelpSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Help & Support'),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 16),

            HelpTile(
              title: 'Visit Website',
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.gray),
            ),
            HelpTile(
              title: 'Report Bug / Error',
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.gray),
            ),
            HelpTile(
              title: 'Contact Us',
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.gray),
            ),
            HelpTile(
              title: 'Follow on Social Media',
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.gray),
            ),
            HelpTile(
              title: 'App Tutorials',
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.gray),
            ),
            HelpTile(
              title: 'Video Tutorial',
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.gray),
            ),
          ],
        ),
      ),
    );
  }
}

/// Custom tile with ZERO left padding – text starts at the very edge
class HelpTile extends StatelessWidget {
  final String title;
  final Widget trailing;
  final VoidCallback? onTap;

  const HelpTile({
    required this.title,
    required this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0), // Matches ListTile height
            child: Row(
              children: [
                // Title starts at 0 padding
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 16, color: AppColors.black),
                  ),
                ),
                // Right arrow
                trailing,
              ],
            ),
          ),
        ),
        // Divider line
        Divider(
          height: 1,
          thickness: 1,
          color: AppColors.gray.withOpacity(0.3),
        ),
      ],
    );
  }
}
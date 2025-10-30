import 'package:flutter/material.dart';
import 'package:posversion1/widgets/list_tile.dart';
import 'package:posversion1/widgets/mycolors.dart';

class StoreSetting extends StatelessWidget {
  const StoreSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        foregroundColor: Colors.white,
        title: const Text('Settings'),
        centerTitle: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            // First Section
            CustomListTile(
              icon: Icons.person_outline,
              title: 'Edit Store Profile',
              trailing: const Icon(Icons.chevron_right, color: AppColors.gray),
              onTap: () {
                // Handle tap
              },
            ),
            CustomListTile(
              icon: Icons.payment,
              title: 'Store Subscription Plan',
              trailing: const Icon(Icons.chevron_right, color: AppColors.gray),
              onTap: () {},
            ),
            CustomListTile(
              icon: Icons.lock_reset_outlined,
              title: 'Reset PIN Code',
              trailing: const Icon(Icons.chevron_right, color: AppColors.gray),
              onTap: () {},
            ),
            CustomListTile(
              icon: Icons.vpn_key_outlined,
              title: 'Forgot PIN',
              trailing: const Icon(Icons.chevron_right, color: AppColors.gray),
              onTap: () {},
            ),
            CustomListTile(
              icon: Icons.storefront_outlined,
              title: 'Learn To Manage Store',
              trailing: const Icon(Icons.chevron_right, color: AppColors.gray),
              onTap: () {},
            ),

            // Header for destructive actions
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'MORE ACTIONS',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: AppColors.gray,
                  ),
                ),
              ),
            ),

            // Destructive Actions
            CustomListTile(
              icon: Icons.close,
              iconColor: Colors.red,
              title: 'Clear All Database',
              onTap: () {
                // Handle clear database
              },
            ),
            CustomListTile(
              icon: Icons.close,
              iconColor: Colors
                  .red, // Add this if your CustomListTile supports iconColor
              title: 'Delete Store',
              onTap: () {
                // Handle delete store
              },
            ),
          ],
        ),
      ),
    );
  }
}

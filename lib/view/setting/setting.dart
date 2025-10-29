import 'package:flutter/material.dart';
import 'package:posversion1/widgets/list_tile.dart';
import 'package:posversion1/widgets/mycolors.dart';
import 'package:posversion1/widgets/myimages.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[30],
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // User Profile Section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.amber,
                  child: CircleAvatar(
                    radius: 38,
                    backgroundImage: const AssetImage(MyImages.personimge),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Mr Umar Farooq',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Mart Manager',
                  style: TextStyle(fontSize: 14, color: AppColors.gray),
                ),
              ],
            ),
          ),

          // Main Menu Items
          CustomListTile(
            icon: Icons.person,
            title: 'User Profile',
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
          ),
          CustomListTile(
            icon: Icons.store,
            title: 'Store Setting',
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
          ),
          const CustomListTile(
            icon: Icons.other_houses,
            title: 'OTHERS',
            isHeader: true,
          ),
          CustomListTile(
            icon: Icons.dark_mode,
            title: 'Dark Mode',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
              activeColor: AppColors.blue,
            ),
          ),
          const CustomListTile(
            icon: Icons.info_outline,
            title: 'About More',
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
          ),
          const CustomListTile(
            icon: Icons.help_outline,
            title: 'Help & Support',
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
          ),
          const CustomListTile(
            icon: Icons.star,
            title: 'Rate us on Playstore',
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
          ),
          const CustomListTile(
            icon: Icons.share,
            title: 'Share App',
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posversion1/widgets/list_tile.dart';
import 'package:posversion1/widgets/mycolors.dart';
import 'package:posversion1/widgets/myimages.dart';
import 'package:posversion1/config/route_name.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[30],
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.amber,
                  child: const CircleAvatar(
                    radius: 38,
                    backgroundImage: AssetImage(MyImages.personimge),
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

          CustomListTile(
            icon: Icons.person,
            title: 'User Profile',
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
            onTap: () => Get.toNamed(MyPagesName.storeSetting),
          ),
          CustomListTile(
            icon: Icons.store,
            title: 'Store Setting',
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
            onTap: () => Get.toNamed(MyPagesName.storeSetting),
          ),

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

          CustomListTile(
            icon: Icons.dark_mode,
            title: 'Dark Mode',
            trailing: Switch(
              value: false,
              onChanged: (value) {},
              activeColor: AppColors.blue,
            ),
            onTap: () {},
          ),
          const CustomListTile(
            icon: Icons.info_outline,
            title: 'About More',
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
            onTap: null, // no action
          ),

          CustomListTile(
            icon: Icons.help_outline,
            title: 'Help & Support',
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
            onTap: () => Get.toNamed(MyPagesName.helpSupport),
          ),
          const CustomListTile(
            icon: Icons.star,
            title: 'Rate us on Playstore',
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
            onTap: null,
          ),
          const CustomListTile(
            icon: Icons.share,
            title: 'Share App',
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.gray,
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}

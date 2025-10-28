import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posversion1/config/route_name.dart';

import 'package:posversion1/widgets/button.dart';
import 'package:posversion1/widgets/myimages.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a PageController to manage page navigation
    final PageController pageController = PageController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        children: [
          // First Page (Original Onboarding Screen)
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(MyImages.img1),
                const SizedBox(height: 8),
                const Text(
                  "Welcome To Mobile Pos",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text(
                  "Help you manage your inventory in \n offline App. Help yomanage your.",
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 10),
                CustomButton(
                  text: "Get Started",
                  onPressed: () {
                    // Navigate to the next page
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ],
            ),
          ),
          // Second Page (Original Onboarding1 Screen)
          Padding(
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  Image.asset(
                    MyImages.circleimg,
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Welcome To Mobile Pos",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Text(
                    "Help you manage your inventory in \n offline App. Help yomanage your.",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 40),
                  CustomButton(
                    text: "Create and Register Store",
                    onPressed: () {
                      Get.toNamed(MyPagesName.userprofile);
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Signin Using Google Account",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
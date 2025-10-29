// lib/widgets/store_header.dart
import 'package:flutter/material.dart';
import 'package:posversion1/widgets/mycolors.dart';
import 'package:posversion1/widgets/myimages.dart';

class StoreHeader extends StatelessWidget {
  const StoreHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 240,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.drawimage),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 20,
          right: 20,
          child: Container(
            height: 120,
            padding: EdgeInsets.symmetric(vertical: 22, horizontal: 20),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                width: 0.5,
                color: const Color.fromARGB(255, 143, 204, 232),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Store Name',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blue,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '+92 3424264849 | Store Address',
                  style: TextStyle(color: AppColors.gray, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 110,
          left: 0,
          right: 0,
          child: Center(child: Image.asset(MyImages.shoppinglogo, height: 60)),
        ),
      ],
    );
  }
}

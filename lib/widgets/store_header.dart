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
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[100],
          ),
        ),
        Positioned(
          top: 40,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.attach_money, size: 20, color: AppColors.gray),
              Icon(Icons.description, size: 20, color: AppColors.gray),
              Icon(Icons.check, size: 20, color: AppColors.gray),
              Icon(Icons.description, size: 20, color: AppColors.gray),
              Icon(Icons.attach_money, size: 20, color: AppColors.gray),
              Icon(Icons.edit, size: 20, color: AppColors.gray),
              Icon(Icons.calculate, size: 20, color: AppColors.gray),
            ],
          ),
        ),
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                  color: AppColors.blue,
                  width: 2,
                ),
              ),
              child: Center(
                child: Image.asset(
                  MyImages.shoppinglogo,
                  height: 40,
                  width: 40,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 140,
          left: 20,
          right: 20,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                width: 0.5,
                color: const Color.fromARGB(255, 143, 204, 232),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'SHOPPING STORE',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blue,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  '+92 34264849 | Store Address',
                  style: TextStyle(color: AppColors.gray, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.blue),
                        ),
                        child: Text(
                          'Upgrade Store',
                          style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.blue,
                        ),
                        child: Text(
                          'Upgrade',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
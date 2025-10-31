import 'package:flutter/material.dart';
import 'package:posversion1/widgets/mycolors.dart';

/// A single product row – exactly the design from the screenshot.
class ProductListItem extends StatelessWidget {
  const ProductListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ----- Title & stock -----
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Title',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '22 in stock',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.gray,
                  ),
                ),
              ],
            ),
          ),

          // ----- Price -----
          Text(
            'Rs 150 200',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
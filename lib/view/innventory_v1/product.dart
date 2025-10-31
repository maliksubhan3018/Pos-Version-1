import 'package:flutter/material.dart';
import 'package:posversion1/widgets/mycolors.dart';
import 'package:posversion1/widgets/pruduct_list%20_item.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        foregroundColor: Colors.white,
        title: const Text('Inventory'),
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          // ---------- Header ----------
          Container(
            padding: const EdgeInsets.fromLTRB(10, 12, 10, 2),
            color: AppColors.white,
            child: Column(
              children: [
                // My Store card
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.lightblue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'My Store',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.gray,
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.blue,
                          foregroundColor: AppColors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Upgrade POS'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                

                // Search bar
                TextField(
                  decoration: InputDecoration(
                    hintText: 'scan SKU code',
                    prefixIcon: const Icon(Icons.search, color: AppColors.gray),
                    filled: true,
                    fillColor: AppColors.lightGray,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  ),
                ),
              ],
            ),
          ),

          // ---------- List ----------
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: 20, // demo – replace with real data
              separatorBuilder: (_, __) =>
                  const Divider(height: 1, thickness: 0.5),
              itemBuilder: (_, __) => const ProductListItem(),
            ),
          ),
        ],
      ),

      // ---------- Bottom navigation ----------
    );
  }
}

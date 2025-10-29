// ignore_for_file: deprecated_member_use

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:posversion1/view/setting/setting.dart';
import 'package:posversion1/widgets/mycolors.dart';
import 'package:posversion1/widgets/store_header.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      const _DashboardHome(),
      const Center(child: Text("Products Page")),
      const Center(child: Text("POS Page")),
      const Center(child: Text("Sales Page")),
      const Setting(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Dashboard"),
        activeColorPrimary: AppColors.blue,
        inactiveColorPrimary: AppColors.gray,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.shopping_bag),
        title: ("Products"),
        activeColorPrimary: AppColors.blue,
        inactiveColorPrimary: AppColors.gray,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.point_of_sale),
        title: ("POS"),
        activeColorPrimary: AppColors.blue,
        inactiveColorPrimary: AppColors.gray,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.trending_up),
        title: ("Sales"),
        activeColorPrimary: AppColors.blue,
        inactiveColorPrimary: AppColors.gray,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        title: ("Settings"),
        activeColorPrimary: AppColors.blue,
        inactiveColorPrimary: AppColors.gray,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      // confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      // hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      // popAllScreensOnTapOfSelectedTab: true,
      // popActionScreens: PopActionScreensType.all,
      // itemAnimationProperties: const ItemAnimationProperties(
      //   duration: Duration(milliseconds: 300),
      //   curve: Curves.ease,
      // ),
      // screenTransitionAnimation: const ScreenTransitionAnimation(
      //   animateTabTransition: true,
      //   curve: Curves.easeInOut,
      //   duration: Duration(milliseconds: 300),
      // ),
      navBarStyle: NavBarStyle.style15, // ✅ Style 15 (your requested style)
    );
  }
}

// ✅ Extracted your original dashboard content into a separate widget
class _DashboardHome extends StatelessWidget {
  const _DashboardHome();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth =
        (screenWidth - 60) / 3; // 3 cards, 2 gaps of 10, padding 20

    return Scaffold(
      backgroundColor: AppColors.lightGray,
      body: SafeArea(
        child: Column(
          children: [
            const StoreHeader(),
            const SizedBox(height: 40),
            // Metrics Section: Blue Container + Grey Cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  // Blue Container: Products & Stock
                  _buildBlueContainer(),
                  const SizedBox(height: 12),
                  // Grey Cards: Orders, Revenue, Profit
                  Row(
                    children: [
                      _buildGreyCard(cardWidth, '100', 'Orders'),
                      const SizedBox(width: 10),
                      _buildGreyCard(cardWidth, '12,000', 'Revenue'),
                      const SizedBox(width: 10),
                      _buildGreyCard(cardWidth, '50,000', 'Profit'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      _buildGreyCard(cardWidth, '100', 'Orders'),
                      const SizedBox(width: 10),
                      _buildGreyCard(cardWidth, '12,000', 'Revenue'),
                      const SizedBox(width: 10),
                      _buildGreyCard(cardWidth, '50,000', 'Profit'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Sale Report with Chart
            // _buildSaleReport(),
            // const Spacer(),
          ],
        ),
      ),
      // ✅ Removed the old BottomNavigationBar (replaced by persistent nav)
    );
  }

  // Blue Container: Products & Stock
  static Widget _buildBlueContainer() {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          _BlueMetric(label: 'Products', value: '100'),
          SizedBox(width: 90),
          _BlueMetric(label: 'Stock', value: '100'),
        ],
      ),
    );
  }

  // Grey Card: Orders / Revenue / Profit
  static Widget _buildGreyCard(double width, String value, String label) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 225, 225, 225),
        borderRadius: BorderRadius.circular(8),
      ),
      child: _GreyMetric(label: label, value: value),
    );
  }
}

// Blue Metric Widget
class _BlueMetric extends StatelessWidget {
  final String value;
  final String label;

  const _BlueMetric({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.8)),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

// Grey Metric Widget
class _GreyMetric extends StatelessWidget {
  final String value;
  final String label;

  const _GreyMetric({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: TextStyle(fontSize: 14, color: AppColors.gray)),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}

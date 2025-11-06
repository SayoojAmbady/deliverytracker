import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:deliverytracker/pages/home.dart';
import 'package:deliverytracker/pages/post.dart';
import 'package:deliverytracker/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/main_navigation_controller.dart';
import 'order_page.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainNavigationController());

    final pages = [
      Home(),
      PostPage(),
      OrderPage(),
      ProfilePage(),
    ];

    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return Obx(() {
      return Scaffold(
        extendBody: true, // makes nav bar float nicely
        backgroundColor: Colors.grey[50],
        body: pages[controller.currentIndex.value],
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            bottom: bottomPadding > 0 ? bottomPadding : 8, // handles button nav mode
          ),
          child: CurvedNavigationBar(
            index: controller.currentIndex.value,
            onTap: controller.changeTab,
            height: 60,
            backgroundColor: Colors.transparent,
            color: const Color(0xff6053f8),
            buttonBackgroundColor: const Color(0xff8f86fa),
            animationDuration: const Duration(milliseconds: 300),
            animationCurve: Curves.easeInOut,
            items: const [
              Icon(Icons.home, color: Colors.white, size: 28),
              Icon(Icons.add_box_rounded, color: Colors.white, size: 28),
              Icon(Icons.shopping_bag_rounded, color: Colors.white, size: 28),
              Icon(Icons.person, color: Colors.white, size: 28),
            ],
          ),
        ),
      );
    });
  }
}

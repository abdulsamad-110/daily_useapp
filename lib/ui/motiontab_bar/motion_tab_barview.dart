import 'package:daily_practice/championships/championshipsview.dart';
import 'package:daily_practice/ui/activites/activitesview.dart';
import 'package:daily_practice/ui/guest/guestview.dart';
import 'package:daily_practice/ui/upcomingdate/upcoming_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';

import '../booking/bookingsview.dart';
import '../navigation/bottom_navigation_controller.dart';

class MotionTabBarview extends StatelessWidget {
  final BottomNavigationController controller =
      Get.put(BottomNavigationController());
  MotionTabBarview({super.key});

  final views = [
    UpcomingView(),
    Guestview(),
    Activitesview(),
    Bookingsview(),
    ChampionshipsView(),
  ];

  final labels = ["Home", "Guest", "Activities", "Settings", "TabBar"];
  final icons = [
    Icons.home,
    Icons.person,
    Icons.favorite_outline,
    Icons.settings_accessibility_outlined,
    Icons.emoji_events_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController controller =
        Get.put(BottomNavigationController());

    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: views,
        ),
      ),
      bottomNavigationBar: MotionTabBar(
        labels: labels,
        initialSelectedTab: labels[0],
        tabIconColor: Colors.grey,
        tabSelectedColor: Colors.deepOrangeAccent,
        icons: icons,
        textStyle: const TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 12,
        ),
        onTabItemSelected: (index) {
          controller.changeIndex(index);
        },
      ),
    );
  }
}

//// ye simple MotionTabBarview hai.
//// ye class uncommit kare or uper wali commit kare gae to ye wali show hogi.

// class MotionTabBarview extends StatelessWidget {
//   final BottomNavigationController controller =
//       Get.put(BottomNavigationController());
//   MotionTabBarview({super.key});

//   final views = [
//     UpcomingView(),
//     Guestview(),
//     Activitesview(),
//     Championshipsview(),
//   ];

//   final labels = ["Home", "Guest", "Activities", "Championships"];
//   final icons = [
//     Icons.home,
//     Icons.person,
//     Icons.favorite_outline,
//     Icons.emoji_events_outlined,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(
//         () => IndexedStack(
//           index: controller.selectedIndex.value,
//           children: views,
//         ),
//       ),
//       bottomNavigationBar: Obx(
//         () => BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: Colors.deepPurpleAccent,
//           unselectedItemColor: Colors.grey,
//           showSelectedLabels: true,
//           showUnselectedLabels: true,
//           onTap: (index) {
//             controller.changeIndex(index);
//           },
//           currentIndex: controller.selectedIndex.value,
//           items: List.generate(labels.length, (index) {
//             return BottomNavigationBarItem(
//               icon: Icon(icons[index]),
//               label: labels[index],
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }

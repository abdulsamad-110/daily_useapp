import 'package:daily_practice/championships/championshipsview.dart';
import 'package:daily_practice/ui/activites/activitesview.dart';
import 'package:daily_practice/ui/booking/bookingsview.dart';
import 'package:daily_practice/ui/guest/guestview.dart';
import 'package:daily_practice/ui/upcomingdate/upcoming_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottom_navigation_controller.dart';

class Navigationview extends StatelessWidget {
  final BottomNavigationController controller =
      Get.put(BottomNavigationController());
  Navigationview({super.key});

  final screens = [
    const UpcomingView(),
    const Bookingsview(),
    const Guestview(),
    const Activitesview(),
    const ChampionshipsView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
            index: controller.selectedIndex.value, children: screens),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          // backgroundColor: Colors.amberAccent,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) {
            controller.changeIndex(index);
          },
          currentIndex: controller.selectedIndex.value,
          selectedLabelStyle: const TextStyle(fontSize: 10),
          unselectedLabelStyle: const TextStyle(fontSize: 10),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_online),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Guest',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Activites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events_outlined),
              label: 'Championships',
            ),
          ],
        ),
      ),
    );
  }
}

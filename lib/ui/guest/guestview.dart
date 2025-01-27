import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:daily_practice/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/custom_drawer.dart';
import '../upcomingdate/upcoming_controller.dart';

class Guestview extends StatelessWidget {
  const Guestview({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UpcomingController>();

    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        drawer: CustomDrawer(),
        
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                
              },
              icon: Icon(color: Colors.black, Icons.menu)),
          title: const Text(
            'Flutter Pkg TabBar',
            style: TextStyle(fontSize: 18),
          ),
          bottom: ButtonsTabBar(
              backgroundColor: Colors.deepOrange,
              unselectedBackgroundColor: Colors.grey,
              unselectedLabelStyle: const TextStyle(color: Colors.black),
              splashColor: const Color.fromARGB(255, 255, 252, 65),
              contentPadding: EdgeInsets.symmetric(horizontal: 22),
              labelSpacing: 14,
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              tabs: const [
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: "Bike",
                ),
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: "Car",
                ),
                Tab(
                  icon: Icon(Icons.directions_train_sharp),
                  text: "Train",
                ),
              ]),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text('Its Bike here'),
          ),
          Center(
            child: Text('Its Car here'),
          ),
          Center(
            child: Text('Its Train here'),
          ),
        ]),
      ),
    );
  }
}

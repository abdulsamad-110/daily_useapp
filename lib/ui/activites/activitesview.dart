import 'package:daily_practice/widgets/custom_appbar.dart';
import 'package:daily_practice/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../upcomingdate/upcoming_controller.dart';

class Activitesview extends StatelessWidget {
  const Activitesview({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UpcomingController>();

    var arrColors = [
      Colors.red,
      Colors.amber,
      Colors.green,
      Colors.blue,
      Colors.grey,
      Colors.orange,
      Colors.purple,
      Colors.deepOrangeAccent,
      Colors.red,
      Colors.amber,
      Colors.green,
      Colors.blue,
      Colors.grey,
      Colors.orange,
      Colors.purple,
      Colors.deepOrangeAccent,
    ];

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 231, 86, 42),
      //   centerTitle: true,
      //   leading: IconButton(
      //       onPressed: () {
      //         CustomDrawer();
      //       },
      //       icon: Icon(color: Colors.white, Icons.menu)),
      //   title: const Text(
      //     'GridView.Count',
      //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      //   ),
      // ),
      appBar: CustomAppBar(
        title: 'GridView.Coun',
        leadingIcon: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print("Menu icon tapped!");
            controller.scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      //key: controller.scaffoldKey,
      drawer: CustomDrawer(),
      body: Column(
        children: [
          ///// First GridView
          ///// jaha apko count ki size ko fix rakhn hai k grid min 2 dekhne chaiye ek row k ander ya 3 he to waha ap gridview.count use kare gae.
          SizedBox(
            height: 200,
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              padding: const EdgeInsets.all(16),
              children: List.generate(
                arrColors.length,
                (index) => Container(
                  color: arrColors[index],
                ),
              ),
            ),
          ),

          ///// Divider or Header
          Container(
            height: 35,
            color: const Color.fromARGB(255, 231, 86, 42),
            child: const Center(
              child: Text(
                'GridView.Extent',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          ///// Second GridView
          ///// jaha apko apne child ya widget ki size fix rakhni hai to os case min ap GirdView.extent use karo gae.
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              padding: const EdgeInsets.all(16),
              children: List.generate(
                arrColors.length,
                (index) => Container(
                  color: arrColors[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

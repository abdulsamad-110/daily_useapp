import 'package:daily_practice/ui/upcomingdate/upcoming_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../dialoges/my_dialog.dart';
import '../navigation/navigationview.dart';

class UpcomingView extends StatelessWidget {
  const UpcomingView({super.key});

  @override
  Widget build(BuildContext context) {
    final UpcomingController controller = Get.put(UpcomingController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('My AppBar'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('Menu icon pressed');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check_circle, color: Colors.green),
            onPressed: () {
              ///// Dialog
              myDialog();
              print('credit_card icon pressed');
            },
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blueAccent,
      //   onPressed: () {},
      //   child: Icon(
      //     Icons.add,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}

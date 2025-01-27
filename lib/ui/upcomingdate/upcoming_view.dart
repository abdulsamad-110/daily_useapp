import 'package:daily_practice/ui/upcomingdate/upcoming_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../dialoges/my_dialog.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_drawer.dart';
import '../widgets/carouselview_widget.dart';

class UpcomingView extends StatelessWidget {
  const UpcomingView({super.key});

  @override
  Widget build(BuildContext context) {
    final UpcomingController controller = Get.put(UpcomingController());

    return Scaffold(
      key: controller.scaffoldKey,
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        leadingIcon: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print("Menu icon tapped!");
            controller.scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: "My AppBar",
        actions: [
          IconButton(
            icon: const Icon(Icons.check_circle, color: Colors.green),
            onPressed: () {
              print("Check icon pressed!");
              myDialog();
            },
          ),
        ],
      ),
      body: const Column(
        children: [
          ///// Carouselview widget
          CarouselViewWidget(),

          SizedBox(
            height: 30,
          ),
          ///// Carouselview widget
          CarouselViewWidget(
            scrollDirection: Axis.vertical,
          ),
        ],
      ),
    );
  }
}

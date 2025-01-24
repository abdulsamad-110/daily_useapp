import 'package:daily_practice/ui/motiontab_bar/motion_tab_barview.dart';
import 'package:daily_practice/ui/upcomingdate/upcoming_view.dart';
import 'package:daily_practice/ui/view/practice_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/navigation/navigationview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MotionTabBarview(),
      // home: Navigationview(),
    );
  }
}

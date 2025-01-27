import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpcomingController extends GetxController {
  ///// Create a GlobalKey to control the Scaffold
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  RxString selectedText1 = 'All'.obs; // For the first field in `myDialog`
  RxString selectedText2 = 'All'.obs; // For the second field in `myDialog`

  ///// Update the first field's text
  void updateSelectedText1(String text) {
    selectedText1.value = text;
  }

  ///// Update the second field's text
  void updateSelectedText2(String text) {
    selectedText2.value = text;
  }
}

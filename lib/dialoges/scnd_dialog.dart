import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/upcomingdate/upcoming_controller.dart';

void scndDialog({required bool isFirstField}) {
  final controller = Get.find<UpcomingController>();
  Get.dialog(Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child:  Padding(
      padding: EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title
          Text(
            'All',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Divider(),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              if (isFirstField) {
                controller.updateSelectedText1('This is first text.');
              }else {
                controller.updateSelectedText2('This is first text.');
              }
              Get.back();
            },
            child: Text(
              'This is the first text.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 8),
          Divider(),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              if (isFirstField) {
                controller.updateSelectedText1('This is the second text.');
              }else {
                controller.updateSelectedText2('This is the second text.');
              }
              Get.back();
            },
            child: Text(
              'This is the second text.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 8),
          Divider(),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              if (isFirstField) {
                controller.updateSelectedText1('This is the third text.');
              }else {
                controller.updateSelectedText2('This is the third text.');
              }
              Get.back();
            },
            child: Text(
              'This is the third text.',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    ),
  ));
}

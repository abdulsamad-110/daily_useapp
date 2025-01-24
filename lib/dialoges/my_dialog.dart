import 'package:daily_practice/dialoges/scnd_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/upcomingdate/upcoming_controller.dart';

void myDialog() {
  final controller = Get.find<UpcomingController>();

  Get.dialog(Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('My Dialog',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              print('First field tapped=====>');
              scndDialog(isFirstField: true);
            },
            child: Obx(() =>
               Container(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child:  Row(
                  children: [
                    Icon(Icons.location_history, color: Colors.green),
                    Expanded(
                      child: Center(
                        child: Text(
                         // 'All',
                         controller.selectedText1.value,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    Icon(Icons.circle, color: Colors.green),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              print('Second field tapped=====>');
              scndDialog(isFirstField: false);
            },
            child: Obx(() =>
               Container(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child:  Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.green),
                    Expanded(
                      child: Center(
                        child: Text(
                          //'All',
                          controller.selectedText2.value,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    Icon(Icons.circle, color: Colors.green),
                  ],
                ),
              ),
            ),
          ),
          //const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => Get.back(),
              child: const Text(
                "UPDATE",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ));
}

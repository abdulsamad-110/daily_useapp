import 'package:daily_practice/ui/view/practice_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showAddDialog() {
  PracticeController controller = Get.find();

  Get.dialog(
    AlertDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Get.back(),
          ),
          const Center(child: Text("Add")),
        ],
      ),
      content: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(),
              ),
              controller: controller.nameController,
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Comments',
                border: OutlineInputBorder(),
              ),
              controller: controller.commentsController,
            ),
            const SizedBox(height: 16), // Add spacing between the TextField and the button
            SizedBox(
              height: 39,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Logic to add the data
                  String name = controller.nameController.text;
                  String comments = controller.commentsController.text;

                  // Call a method from your PracticeController to handle the addition
                  controller.addPractice(name, comments);

                  // Clear the text fields after adding
                  controller.nameController.clear();
                  controller.commentsController.clear();

                  // Close the dialog
                  Get.back();
                },
                child: const Text("Add"),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

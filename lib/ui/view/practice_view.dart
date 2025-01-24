import 'package:daily_practice/ui/view/practice_controller.dart';
import 'package:daily_practice/ui/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PracticeView extends StatelessWidget {
  const PracticeView({super.key});

  @override
  Widget build(BuildContext context) {
    final PracticeController controller = Get.put(PracticeController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Custom Dialog"),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20, bottom: 30),
        child: FloatingActionButton(
          onPressed: () {
            // Show custom dialog using Get.dialog
           showAddDialog();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

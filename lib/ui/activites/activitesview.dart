import 'package:flutter/material.dart';

class Activitesview extends StatelessWidget {
  const Activitesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Activites View'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Activites',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

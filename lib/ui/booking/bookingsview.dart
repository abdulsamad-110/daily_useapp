import 'package:flutter/material.dart';

class Bookingsview extends StatelessWidget {
  const Bookingsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bookings"),
      ),
      body: const Center(
        child: Text(
          'Welcome for Bookings',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

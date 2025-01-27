// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Bookingsview extends StatelessWidget {
  const Bookingsview({super.key});

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.amber,
      Colors.green,
      Colors.blue,
      Colors.grey,
      Colors.orange,
      Colors.purple,
      Colors.deepOrangeAccent,
      Colors.red,
      Colors.amber,
      Colors.green,
      Colors.blue,
      Colors.grey,
      Colors.orange,
      Colors.purple,
      Colors.deepOrangeAccent,
    ];

    var arrColors2 = [
      Colors.pink,
      Colors.cyan,
      Colors.indigo,
      Colors.teal,
      Colors.brown,
      Colors.blueGrey,
      Colors.lime,
      Colors.pinkAccent,
      Colors.greenAccent,
      Colors.yellow,
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.deepPurpleAccent,
      Colors.lightBlue,
      Colors.green,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 86, 42),
        centerTitle: true,
        title: const Text(
          'GridView.Builder (gridDelegate: Count)',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          ///// First GridView
          //agar ap count ko fix rakhna chahte hen to CrossAxisCount lena pare ga.
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              itemCount: arrColors.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.30,
              ),
              itemBuilder: (context, index) {
                return Container(
                  color: arrColors[index],
                );
              },
            ),
          ),

          ///// Divider between two GridViews
          Container(
            height: 35,
            color: const Color.fromARGB(255, 231, 86, 42),
            child: const Center(
              child: Text(
                'GridView.builder (gridDelegate: Extent)',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          ///// Second GridView
          //agar ap child ya widget k fix rakhna chahte hen to CrossAxisExtent lena pare ga.
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: arrColors2.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.30,
              ),
              itemBuilder: (context, index) {
                return Container(
                  color: arrColors2[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
